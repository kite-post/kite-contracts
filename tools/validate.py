#!/usr/bin/env python3
"""Перевіряє схеми подій і реєстр до того, як щось генерувати.

Без залежностей. Що саме перевіряємо:

  • схема події оформлена однаково: 2020-12, $id за шляхом файлу, заголовок
    PascalCase із суфіксом Data, опис, type: object, required ⊆ properties;
  • схема не закривається additionalProperties: false — інакше додане
    необов'язкове поле зламає старих споживачів (8.3, п. 8);
  • усі $ref ведуть у api.schema.json або common.schema.json і там є;
  • реєстр і каталог events/ описують одне й те саме; ключ розділу є серед
    полів схеми; коди подій — із каталогу 8.2;
  • auth/permissions.json: кожна роль із Role має запис, дозволи оголошені й
    видані хоч комусь; x-kite-permission в операціях — з цього переліку, а
    кожна операція /internal/ має тег internal-*, servers і дозвіл чи підпис.
"""

from __future__ import annotations

import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
EVENTS = ROOT / "events"
RESERVED = {"cloudevents.schema.json", "common.schema.json", "api.schema.json"}

# Каталог кодів подій з розділу 8.2 документації.
EVENT_CODES = {
    "KT01", "KT02", "KT03", "KT10", "KT20", "KT21", "KT22", "KT23", "KT30",
    "KT31", "KT32", "KT33", "KT50", "KT60", "KT61", "KT62", "KT63", "KT70",
    "KT71", "KT80", "KT81", "KT82", "KT90",
}

TOPICS = {
    "shipment.events", "scan.events", "logistics.events", "locker.events",
    "payment.events", "customer.events", "ai.events", "care.events",
    "audit.events",
}

TYPE_RE = re.compile(r"^kite\.[a-z]+\.[a-z-]+\.v[0-9]+$")
TITLE_RE = re.compile(r"^[A-Z][A-Za-z0-9]+Data$")

problems: list[str] = []


def check(cond: bool, msg: str) -> None:
    if not cond:
        problems.append(msg)


def refs(node, out: list[str]) -> None:
    if isinstance(node, dict):
        if isinstance(node.get("$ref"), str):
            out.append(node["$ref"])
        for v in node.values():
            refs(v, out)
    elif isinstance(node, list):
        for v in node:
            refs(v, out)


def closed(node) -> bool:
    if isinstance(node, dict):
        if node.get("additionalProperties") is False:
            return True
        return any(closed(v) for v in node.values())
    if isinstance(node, list):
        return any(closed(v) for v in node)
    return False


PERMISSION_RE = re.compile(r"^[a-z][a-z-]*:[a-z][a-z-]*(:[a-z][a-z-]*)?$")
METHODS = {"get", "put", "post", "patch", "delete", "head", "options"}


def check_permissions(api_path: pathlib.Path) -> None:
    """auth/permissions.json: мапа «роль → дозволи» (3.2) і x-kite-permission в операціях."""
    where = "auth/permissions.json:"
    auth = json.loads((ROOT / "auth" / "permissions.json").read_text(encoding="utf-8"))
    names: list[str] = [p["name"] for p in auth["permissions"]]
    declared = set(names)
    for name in sorted({n for n in names if names.count(n) > 1}):
        check(False, f"{where} дозвіл {name} оголошено двічі")
    for p in auth["permissions"]:
        check(bool(PERMISSION_RE.match(p["name"])),
              f"{where} «{p['name']}» не відповідає <ресурс>:<дія>[:<чиє>]")
        check(bool(p.get("description")), f"{where} {p['name']} без опису")

    realm: set[str] = set()
    if api_path.exists():
        realm = set(json.loads(api_path.read_text(encoding="utf-8"))["$defs"]["Role"]["enum"])
    roles: dict[str, list[str]] = auth["roles"]
    for role in sorted(realm - set(roles)):
        check(False, f"{where} роль {role} є в Role, але не має запису — навіть порожнього")
    used: set[str] = set()
    for role, perms in roles.items():
        check(role in realm, f"{where} роль {role} не з переліку Role")
        for perm in sorted({x for x in perms if perms.count(x) > 1}):
            check(False, f"{where} {role}: дозвіл {perm} повторюється")
        for perm in perms:
            check(perm in declared, f"{where} {role}: дозволу {perm} немає в permissions")
        used |= set(perms)
    for perm in sorted(declared - used):
        check(False, f"{where} дозвіл {perm} не дано жодній ролі — прибрати або видати")

    spec_path = ROOT / "build" / "openapi.json"
    if not spec_path.exists():
        return
    spec = json.loads(spec_path.read_text(encoding="utf-8"))
    for path, item in spec["paths"].items():
        for method, op in item.items():
            if method not in METHODS:
                continue
            at = f"openapi.yaml {method.upper()} {path}:"
            perm = op.get("x-kite-permission")
            if perm is not None:
                check(perm in declared, f"{at} x-kite-permission {perm} не з auth/permissions.json")
            if path.startswith("/internal/"):
                check(all(t.startswith("internal-") for t in op.get("tags", [])) and bool(op.get("tags")),
                      f"{at} внутрішня операція має тег internal-<сервіс>")
                signed = op.get("security") == [{"providerSignature": []}]
                check(signed or perm is not None,
                      f"{at} внутрішня операція без x-kite-permission і без підпису")
                check(bool(op.get("servers")), f"{at} внутрішня операція без servers — куди її кликати?")
            else:
                check(not any(t.startswith("internal-") for t in op.get("tags", [])),
                      f"{at} тег internal-* лише для шляхів /internal/")


def main() -> int:
    api_path = EVENTS / "api.schema.json"
    api_defs: set[str] = set()
    if api_path.exists():
        api_defs = set(json.loads(api_path.read_text(encoding="utf-8"))["$defs"])
    else:
        problems.append("немає events/api.schema.json — спершу `make bundle`")

    common = json.loads((EVENTS / "common.schema.json").read_text(encoding="utf-8"))
    common_defs = set(common["$defs"])

    # ActorRole — актори подій, Role — усі ролі realm (3.1): перший має бути
    # підмножиною другого, інакше подія назве роль, якої Keycloak не видає.
    if api_path.exists():
        api_doc = json.loads(api_path.read_text(encoding="utf-8"))["$defs"]
        realm = set(api_doc.get("Role", {}).get("enum", []))
        actors = set(common["$defs"].get("ActorRole", {}).get("enum", []))
        check(bool(realm), "api.schema.json: немає переліку Role")
        for extra in sorted(actors - realm):
            check(False, f"common.schema.json: ActorRole містить {extra}, якого немає в Role")

    files = sorted(
        p for p in EVENTS.rglob("*.schema.json") if p.name not in RESERVED
    )
    check(bool(files), "у events/ немає жодної схеми події")

    titles: dict[str, pathlib.Path] = {}
    for path in files:
        rel = path.relative_to(EVENTS).as_posix()
        doc = json.loads(path.read_text(encoding="utf-8"))
        where = f"{rel}:"

        check(doc.get("$schema") == "https://json-schema.org/draft/2020-12/schema",
              f"{where} $schema має бути draft 2020-12")
        slug = rel.removesuffix(".schema.json")
        expect_id = f"https://schemas.kite.ua/events/{slug}/v1.json"
        check(doc.get("$id") == expect_id, f"{where} $id має бути {expect_id}")
        title = doc.get("title", "")
        check(bool(TITLE_RE.match(title)),
              f"{where} заголовок «{title}» має бути PascalCase із суфіксом Data")
        check(bool(doc.get("description")), f"{where} немає опису")
        check(doc.get("type") == "object", f"{where} type має бути object")
        props = doc.get("properties") or {}
        check(bool(props), f"{where} немає properties")
        for name in doc.get("required", []):
            check(name in props, f"{where} required містить {name}, якого немає в properties")
        for name in props:
            check(bool(re.fullmatch(r"[a-z][A-Za-z0-9]*", name)),
                  f"{where} поле {name} має бути lowerCamelCase")
        check(not closed(doc),
              f"{where} additionalProperties: false закриває схему для додавання полів (8.3, п. 8)")
        if title in titles:
            check(False, f"{where} заголовок {title} уже є у {titles[title]}")
        titles[title] = path

        found: list[str] = []
        refs(doc, found)
        for ref in found:
            m = re.fullmatch(r"(api|common)\.schema\.json#/\$defs/([A-Za-z0-9_]+)", ref)
            if not m:
                check(False, f"{where} $ref «{ref}» має вести в api.schema.json або common.schema.json")
                continue
            pool = api_defs if m.group(1) == "api" else common_defs
            if pool:
                check(m.group(2) in pool,
                      f"{where} $ref «{ref}» вказує на визначення, якого немає")

    registry = json.loads((EVENTS / "registry.json").read_text(encoding="utf-8"))
    check(registry.get("envelope") == "cloudevents.schema.json",
          "registry.json: envelope має бути cloudevents.schema.json")
    listed: list[str] = []
    seen_types: set[str] = set()
    for entry in registry["events"]:
        t = entry["type"]
        where = f"registry.json [{t}]:"
        check(bool(TYPE_RE.match(t)), f"{where} тип не відповідає kite.<домен>.<подія>.vN")
        check(t not in seen_types, f"{where} тип повторюється")
        seen_types.add(t)
        check(entry["topic"] in TOPICS, f"{where} невідомий топік {entry['topic']}")
        listed.append(entry["schema"])
        path = EVENTS / entry["schema"]
        if not path.exists():
            check(False, f"{where} схеми {entry['schema']} немає")
            continue
        doc = json.loads(path.read_text(encoding="utf-8"))
        check(entry["dataSchemaTitle"] == doc["title"],
              f"{where} dataSchemaTitle розійшовся із заголовком схеми")
        check(entry["partitionKey"] in (doc.get("properties") or {}),
              f"{where} ключ розділу {entry['partitionKey']} не є полем схеми")
        for code in entry.get("eventCodes", []):
            check(code in EVENT_CODES, f"{where} код {code} не з каталогу 8.2")
        domain = entry["schema"].split("/")[0]
        check(entry["topic"] == f"{domain}.events",
              f"{where} схема лежить у events/{domain}, а топік — {entry['topic']}")

    check_permissions(api_path)

    on_disk = {p.relative_to(EVENTS).as_posix() for p in files}
    for extra in sorted(on_disk - set(listed)):
        check(False, f"схема {extra} є на диску, але її немає в registry.json")
    dupes = {x for x in listed if listed.count(x) > 1}
    for d in sorted(dupes):
        check(False, f"схема {d} вказана в registry.json двічі")

    if problems:
        print(f"знайдено проблем: {len(problems)}", file=sys.stderr)
        for p in problems:
            print(f"  ✗ {p}", file=sys.stderr)
        return 1
    print(f"схеми в порядку: {len(files)} подій, {len(registry['events'])} записів реєстру")
    return 0


if __name__ == "__main__":
    sys.exit(main())
