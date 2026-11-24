#!/usr/bin/env python3
"""Зводить REST-контракт і схеми подій в один документ для генераторів.

Без залежностей: на вхід — openapi.yaml, уже перекладений у JSON (Makefile робить
це через yq), і каталог events/. На вихід:

  events/api.schema.json          схеми REST-контракту як JSON Schema 2020-12,
                                  щоб схеми подій посилалися на них, а не
                                  тримали копій (5.4, п. 6);
  build/kite-contracts.openapi.json
                                  один документ: шляхи API + схеми подій +
                                  типізовані конверти CloudEvents. Саме його
                                  читають openapi-generator і oapi-codegen.

Правило, яке тут втілено: одне ім'я — одне визначення. Якщо схема події
визначає тип, який уже є в REST-контракті, і визначає інакше — збірка падає.
"""

from __future__ import annotations

import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
EVENTS = ROOT / "events"
BUILD = ROOT / "build"

RESERVED = {"cloudevents.schema.json", "common.schema.json", "api.schema.json"}


def fail(msg: str) -> None:
    print(f"bundle: {msg}", file=sys.stderr)
    sys.exit(1)


def walk(node, fn):
    """Рекурсивно застосовує fn до кожного словника дерева (знизу вгору)."""
    if isinstance(node, dict):
        node = {k: walk(v, fn) for k, v in node.items()}
        return fn(node)
    if isinstance(node, list):
        return [walk(v, fn) for v in node]
    return node


# ── OpenAPI 3.0 → JSON Schema 2020-12 ────────────────────────────────────────

def oas_to_jsonschema(node: dict) -> dict:
    out = dict(node)
    ref = out.get("$ref")
    if isinstance(ref, str) and ref.startswith("#/components/schemas/"):
        out["$ref"] = "#/$defs/" + ref.rsplit("/", 1)[1]
    if out.pop("nullable", False):
        t = out.get("type")
        if isinstance(t, str):
            out["type"] = [t, "null"]
        elif "$ref" in out:
            out = {"anyOf": [{"$ref": out.pop("$ref")}, {"type": "null"}], **out}
    if "example" in out:
        out["examples"] = [out.pop("example")]
    return out


# ── JSON Schema 2020-12 → OpenAPI 3.0 ───────────────────────────────────────

def jsonschema_to_oas(node: dict) -> dict:
    out = dict(node)
    for k in ("$schema", "$id", "title", "$comment"):
        out.pop(k, None)
    ref = out.get("$ref")
    if isinstance(ref, str):
        m = re.fullmatch(r"(api|common)\.schema\.json#/\$defs/([A-Za-z0-9_]+)", ref)
        if m:
            out = {"$ref": f"#/components/schemas/{m.group(2)}"}
        elif ref.startswith("#/$defs/"):
            fail(f"локальний $defs у схемі події не підтримується: {ref}")
        else:
            fail(f"незрозумілий $ref: {ref}")
        return out
    t = out.get("type")
    if isinstance(t, list):
        rest = [x for x in t if x != "null"]
        if len(rest) != 1:
            fail(f"OpenAPI 3.0 не вміє union-типів: {t}")
        out["type"] = rest[0]
        if "null" in t:
            out["nullable"] = True
    if "const" in out:
        out["enum"] = [out.pop("const")]
    if "examples" in out:
        ex = out.pop("examples")
        if isinstance(ex, list) and ex:
            out["example"] = ex[0]
    return out


def permission_varname(name: str) -> str:
    """shipment:create:on-behalf → SHIPMENT_CREATE_ON_BEHALF — ім'я константи в мовах."""
    return re.sub(r"[^A-Za-z0-9]+", "_", name).upper()


def main() -> None:
    if len(sys.argv) != 2:
        fail("виклик: bundle.py <build/openapi.json>")
    spec = json.loads(pathlib.Path(sys.argv[1]).read_text(encoding="utf-8"))
    api_schemas: dict = spec["components"]["schemas"]

    # 1. дзеркало REST-схем для схем подій
    mirror = {
        "$schema": "https://json-schema.org/draft/2020-12/schema",
        "$id": "https://schemas.kite.ua/events/api/v1.json",
        "title": "KiteApiTypes",
        "description": (
            "Згенеровано з openapi/openapi.yaml — не правити руками. "
            "Схеми подій посилаються сюди замість того, щоб копіювати типи."
        ),
        "$defs": {k: walk(v, oas_to_jsonschema) for k, v in api_schemas.items()},
    }
    (EVENTS / "api.schema.json").write_text(
        json.dumps(mirror, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    # 2. власні типи подій
    bundled = dict(api_schemas)
    common = json.loads((EVENTS / "common.schema.json").read_text(encoding="utf-8"))
    for name, body in common["$defs"].items():
        converted = walk(body, jsonschema_to_oas)
        if name in bundled and json.dumps(bundled[name], sort_keys=True) != json.dumps(converted, sort_keys=True):
            fail(f"тип {name} визначено двічі й по-різному: common.schema.json і openapi.yaml")
        bundled[name] = converted

    envelope = json.loads((EVENTS / "cloudevents.schema.json").read_text(encoding="utf-8"))
    bundled["CloudEvent"] = walk(envelope, jsonschema_to_oas)

    registry = json.loads((EVENTS / "registry.json").read_text(encoding="utf-8"))
    titles: dict[str, str] = {}
    for entry in registry["events"]:
        path = EVENTS / entry["schema"]
        if not path.exists():
            fail(f"реєстр посилається на схему, якої немає: {entry['schema']}")
        doc = json.loads(path.read_text(encoding="utf-8"))
        title = doc["title"]
        if title in titles:
            fail(f"заголовок схеми {title} зустрівся двічі: {titles[title]} і {entry['schema']}")
        titles[title] = entry["schema"]
        if title in bundled:
            fail(f"ім'я схеми події {title} збігається з типом REST-контракту")
        bundled[title] = walk(doc, jsonschema_to_oas)

        # типізований конверт: той самий CloudEvent, але data і type закріплені
        env_name = title.removesuffix("Data") + "Event"
        props = {k: dict(v) for k, v in bundled["CloudEvent"]["properties"].items()}
        props["type"] = {"type": "string", "enum": [entry["type"]]}
        props["data"] = {"$ref": f"#/components/schemas/{title}"}
        props["dataschema"] = {**props.get("dataschema", {}), "example": doc["$id"]}
        bundled[env_name] = {
            "type": "object",
            "description": (
                f"{entry['type']} — топік {entry['topic']}, продюсер {entry['producer']}, "
                f"ключ розділу {entry['partitionKey']}. {doc['description']}"
            ),
            "required": list(bundled["CloudEvent"]["required"]),
            "properties": props,
        }

    bundled["KiteEventType"] = {
        "type": "string",
        "description": "Усі типи доменних подій Kite з events/registry.json",
        "enum": [e["type"] for e in registry["events"]],
    }
    bundled["KiteTopic"] = {
        "type": "string",
        "description": "Топіки Kafka (9.7)",
        "enum": sorted({e["topic"] for e in registry["events"]}),
    }

    # Дозволи (3.2): перелік — з auth/permissions.json, щоб у кожній мові був
    # типізований Permission, а мапа «роль → дозволи» посилалася на нього.
    auth = json.loads((ROOT / "auth" / "permissions.json").read_text(encoding="utf-8"))
    if "Permission" in bundled:
        fail("ім'я Permission зайняте типом REST-контракту — його дає auth/permissions.json")
    bundled["Permission"] = {
        "type": "string",
        "description": (
            "Дозвіл (3.2): <ресурс>:<дія>[:<чиє>]. Keycloak видає лише роль, а які "
            "дозволи вона дає — мапа з auth/permissions.json."
        ),
        "enum": [p["name"] for p in auth["permissions"]],
        "x-enum-varnames": [permission_varname(p["name"]) for p in auth["permissions"]],
        "x-enum-descriptions": [p["description"] for p in auth["permissions"]],
    }

    spec["components"]["schemas"] = dict(sorted(bundled.items()))
    spec["x-kite-events"] = registry["events"]
    spec["x-kite-role-permissions"] = auth["roles"]
    spec["info"]["description"] = spec["info"].get("description", "") + (
        "\n\nЦей документ зведений: до REST-контракту додані схеми подій і "
        "типізовані конверти CloudEvents. Правити треба openapi/openapi.yaml "
        "та events/**, а не його.\n"
    )

    BUILD.mkdir(exist_ok=True)
    out = BUILD / "kite-contracts.openapi.json"
    out.write_text(json.dumps(spec, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(
        f"бандл: {len(spec['paths'])} шляхів, {len(spec['components']['schemas'])} схем "
        f"({len(registry['events'])} типів подій) → {out.relative_to(ROOT)}"
    )


if __name__ == "__main__":
    main()
