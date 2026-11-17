#!/usr/bin/env python3
"""Перевіряє, що схеми подій змінилися сумісно з попереднім тегом.

    python3 tools/compat.py <base-dir> <head-dir>

Кожна директорія — корінь kite-contracts зі зведеним build/kite-contracts.openapi.json
і events/registry.json. REST перевіряє oasdiff; тут — події, бо oasdiff бачить лише
те, що досяжне зі шляхів API, а конверти подій живуть окремо.

Правило (8.3, п. 8): схему події можна змінювати лише додаванням необов'язкових
полів. Тож ламає сумісність:

  • зник тип події або змінились його топік чи ключ розділу;
  • зникла схема, досяжна з конверта події;
  • зникло поле, змінився його тип, формат чи $ref;
  • поле стало обов'язковим;
  • зникло значення enum.

Нове значення enum — не помилка, але попередження: споживач, що розбирає enum
суворо, на ньому впаде, тож хай читає незнайомі значення як «інше».
"""

from __future__ import annotations

import json
import pathlib
import sys

BUNDLE = pathlib.Path("build/kite-contracts.openapi.json")
REGISTRY = pathlib.Path("events/registry.json")
PREFIX = "#/components/schemas/"

errors: list[str] = []
notes: list[str] = []


def load(root: pathlib.Path) -> tuple[dict, dict]:
    bundle = json.loads((root / BUNDLE).read_text(encoding="utf-8"))
    registry = json.loads((root / REGISTRY).read_text(encoding="utf-8"))
    return bundle["components"]["schemas"], registry


def reachable(schemas: dict, roots: list[str]) -> set[str]:
    seen: set[str] = set()
    stack = list(roots)
    while stack:
        name = stack.pop()
        if name in seen or name not in schemas:
            continue
        seen.add(name)

        def walk(node: object) -> None:
            if isinstance(node, dict):
                ref = node.get("$ref")
                if isinstance(ref, str) and ref.startswith(PREFIX):
                    stack.append(ref.removeprefix(PREFIX))
                for v in node.values():
                    walk(v)
            elif isinstance(node, list):
                for v in node:
                    walk(v)

        walk(schemas[name])
    return seen


def compare(base: dict, head: dict, where: str) -> None:
    for key in ("type", "format", "$ref"):
        if base.get(key) != head.get(key):
            errors.append(f"{where}: {key} змінився {base.get(key)!r} → {head.get(key)!r}")

    if "enum" in base:
        old, new = base["enum"], head.get("enum", [])
        gone = [v for v in old if v not in new]
        added = [v for v in new if v not in old]
        if gone:
            errors.append(f"{where}: зникли значення enum {gone}")
        if added and not where.endswith(".type"):
            notes.append(f"{where}: нові значення enum {added} — споживачі мають їх терпіти")

    old_req = set(base.get("required", []))
    new_req = set(head.get("required", []))
    for name in sorted(new_req - old_req):
        errors.append(f"{where}: поле {name} стало обов'язковим")

    old_props = base.get("properties") or {}
    new_props = head.get("properties") or {}
    for name, schema in old_props.items():
        if name not in new_props:
            errors.append(f"{where}: зникло поле {name}")
            continue
        compare(schema, new_props[name], f"{where}.{name}")

    if isinstance(base.get("items"), dict) and isinstance(head.get("items"), dict):
        compare(base["items"], head["items"], f"{where}[]")

    for combo in ("anyOf", "oneOf", "allOf"):
        old, new = base.get(combo), head.get(combo)
        if old is not None and old != new:
            errors.append(f"{where}: {combo} змінився — це не адитивна зміна")


def main() -> int:
    if len(sys.argv) != 3:
        print(__doc__, file=sys.stderr)
        return 2
    base_root, head_root = map(pathlib.Path, sys.argv[1:])
    base_schemas, base_reg = load(base_root)
    head_schemas, head_reg = load(head_root)

    head_events = {e["type"]: e for e in head_reg["events"]}
    for entry in base_reg["events"]:
        t = entry["type"]
        if t not in head_events:
            errors.append(f"тип {t} зник — старий тип живе, доки має споживачів (8.3, п. 8)")
            continue
        for key in ("topic", "partitionKey"):
            if entry[key] != head_events[t][key]:
                errors.append(f"тип {t}: {key} змінився {entry[key]} → {head_events[t][key]}")

    roots = [n for n in base_schemas if n.endswith("Event")]
    for name in sorted(reachable(base_schemas, roots)):
        if name not in head_schemas:
            errors.append(f"схема {name} зникла, а на неї посилаються події")
            continue
        compare(base_schemas[name], head_schemas[name], name)

    added = sorted(set(head_events) - {e["type"] for e in base_reg["events"]})
    for t in added:
        print(f"  + новий тип події {t}")
    for n in notes:
        print(f"  ! {n}")
    if errors:
        print(f"несумісних змін у подіях: {len(errors)}", file=sys.stderr)
        for e in errors:
            print(f"  ✗ {e}", file=sys.stderr)
        print("Зміна змісту поля — це новий тип події з суфіксом .v2 (8.3, п. 8).", file=sys.stderr)
        return 1
    print(f"події сумісні з попереднім тегом: {len(base_reg['events'])} типів перевірено")
    return 0


if __name__ == "__main__":
    sys.exit(main())
