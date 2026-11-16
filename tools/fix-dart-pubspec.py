#!/usr/bin/env python3
"""Піднімає версію dev-залежності test у згенерованому pubspec.

Шаблон openapi-generator ставить `test: '>=1.21.6 <1.22.0'`, а сучасний
`dart test` з таким пакетом не запускається. Чіпати шаблон генератора через
один рядок не варто, тож правимо результат одразу після генерації — крок
детермінований, і `make check` ловить, якщо його забули.
"""

from __future__ import annotations

import pathlib
import re
import sys

PUBSPEC = pathlib.Path(__file__).resolve().parent.parent / "dart" / "pubspec.yaml"
WANT = "^1.26.2"


def main() -> int:
    text = PUBSPEC.read_text(encoding="utf-8")
    patched, n = re.subn(r"(?m)^(  test: ).+$", rf"\g<1>'{WANT}'", text, count=1)
    if n != 1:
        print("не знайшов dev-залежність test у dart/pubspec.yaml", file=sys.stderr)
        return 1
    if patched != text:
        PUBSPEC.write_text(patched, encoding="utf-8")
        print(f"dart/pubspec.yaml: test → {WANT}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
