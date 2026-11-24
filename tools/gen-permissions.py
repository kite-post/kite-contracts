#!/usr/bin/env python3
"""Робить із auth/permissions.json мапу «роль → дозволи» як код (3.2, 14.2 п. 9).

Keycloak видає в токені лише роль, а що вона дозволяє — вирішує ця мапа. Java
читає permissions.json просто з ресурсів jar (ua.kite.contracts.auth.Permissions),
а для Go, Dart, TypeScript і Python мапа генерується в код. Перевірка в Go —
руками в kite/authz.go, у TypeScript — у ts/src/index.ts; у Dart і Python вона
крихітна і генерується разом із мапою.

Імена ролей у токені — рядки з realm_access.roles; серед них бувають службові
ролі Keycloak (default-roles-kite, offline_access), тож невідома роль — не
помилка, а просто «нічого не дає».
"""

from __future__ import annotations

import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent.parent
HEADER = "Згенеровано з auth/permissions.json командою tools/gen-permissions.py — не правити."


def upper(name: str) -> str:
    """shipment:create:on-behalf → SHIPMENT_CREATE_ON_BEHALF (як x-enum-varnames у bundle.py)."""
    return re.sub(r"[^A-Za-z0-9]+", "_", name).upper()


def go_const(type_name: str, varname: str) -> str:
    """Як oapi-codegen називає константу переліку: Role + SHIFT_MANAGER → RoleSHIFTMANAGER."""
    return type_name + varname.replace("_", "")


def main() -> None:
    auth = json.loads((ROOT / "auth" / "permissions.json").read_text(encoding="utf-8"))
    roles: dict[str, list[str]] = auth["roles"]

    # ── Go ───────────────────────────────────────────────────────────────────
    go = [
        f"// {HEADER}",
        "",
        "package kite",
        "",
        "// RolePermissions — які дозволи дає кожна роль realm kite (3.2). Перевіряти",
        "// краще через HasPermission: вона приймає ролі прямо з токена.",
        "var RolePermissions = map[Role][]Permission{",
    ]
    for role, perms in roles.items():
        go.append(f"\t{go_const('Role', upper(role))}: {{")
        go += [f"\t\t{go_const('Permission', upper(p))}," for p in perms]
        go.append("\t},")
    go += ["}", ""]
    (ROOT / "kite" / "permissions.gen.go").write_text("\n".join(go), encoding="utf-8")

    # ── Dart ─────────────────────────────────────────────────────────────────
    dart = [
        f"// {HEADER}",
        "",
        "import 'api.dart';",
        "",
        "/// Які дозволи дає кожна роль realm kite (3.2), за іменем ролі з токена.",
        "const Map<String, Set<String>> kiteRolePermissions = <String, Set<String>>{",
    ]
    for role, perms in roles.items():
        items = ", ".join(f"'{p}'" for p in perms)
        dart.append(f"  '{role}': <String>{{{items}}},")
    dart += [
        "};",
        "",
        "/// Чи дає хоч одна з ролей дозвіл. Ролі — як у `realm_access.roles`;",
        "/// незнайомі (default-roles-kite тощо) нічого не дають.",
        "bool hasPermission(Iterable<String> roles, Permission permission) =>",
        "    roles.any((role) => kiteRolePermissions[role]?.contains(permission.value) ?? false);",
        "",
        "/// Усі дозволи, які дають ролі.",
        "Set<Permission> permissionsOf(Iterable<String> roles) => <Permission>{",
        "      for (final role in roles)",
        "        for (final name in kiteRolePermissions[role] ?? const <String>{})",
        "          Permission.fromJson(name)!,",
        "    };",
        "",
    ]
    (ROOT / "dart" / "lib" / "kite_permissions.dart").write_text("\n".join(dart), encoding="utf-8")

    # ── TypeScript ───────────────────────────────────────────────────────────
    ts = [
        f"// {HEADER}",
        "",
        'import type { Permission, Role } from "./schema.gen.js";',
        "",
        "/** Які дозволи дає кожна роль realm kite (3.2). */",
        "export const kiteRolePermissions: Readonly<Record<Role, readonly Permission[]>> = {",
    ]
    for role, perms in roles.items():
        items = ", ".join(f'"{p}"' for p in perms)
        ts.append(f'  "{role}": [{items}],')
    ts += ["};", ""]
    (ROOT / "ts" / "src" / "permissions.gen.ts").write_text("\n".join(ts), encoding="utf-8")

    # ── Python ───────────────────────────────────────────────────────────────
    py = [
        '"""Мапа «роль → дозволи» realm kite (3.2) і перевірка дозволу.',
        "",
        HEADER,
        '"""',
        "",
        "from __future__ import annotations",
        "",
        "from collections.abc import Iterable, Mapping",
        "from typing import Final",
        "",
        "from kite_contracts.models import Permission, Role",
        "",
        "ROLE_PERMISSIONS: Final[Mapping[Role, frozenset[Permission]]] = {",
    ]
    for role, perms in roles.items():
        items = ", ".join(f"Permission.{upper(p)}" for p in perms)
        py.append(f"    Role.{upper(role)}: frozenset({{{items}}}),")
    py += [
        "}",
        "",
        "",
        "def permissions_of(roles: Iterable[str]) -> frozenset[Permission]:",
        '    """Усі дозволи, які дають ролі з realm_access.roles; незнайомі ролі нічого не дають."""',
        "    out: set[Permission] = set()",
        "    for name in roles:",
        "        try:",
        "            role = Role(name)",
        "        except ValueError:",
        "            continue",
        "        out |= ROLE_PERMISSIONS.get(role, frozenset())",
        "    return frozenset(out)",
        "",
        "",
        "def has_permission(roles: Iterable[str], permission: Permission) -> bool:",
        '    """Чи дає хоч одна з ролей дозвіл."""',
        "    return permission in permissions_of(roles)",
        "",
    ]
    (ROOT / "python" / "src" / "kite_contracts" / "permissions.py").write_text("\n".join(py), encoding="utf-8")

    print(f"дозволи: {len(auth['permissions'])} на {len(roles)} ролей → Go, Dart, TypeScript, Python")


if __name__ == "__main__":
    main()
