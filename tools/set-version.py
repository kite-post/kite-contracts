#!/usr/bin/env python3
"""Розставляє версію з VERSION по місцях, де її вимагає формат пакета.

Джерело правди — файл VERSION. pom.xml і конфіг Dart-генератора мають свою
версію в тексті, тож їх треба тримати в руках; CI перевіряє, що вони збігаються.
"""

from __future__ import annotations

import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent


def main() -> int:
    if len(sys.argv) == 2:
        version = sys.argv[1]
        (ROOT / "VERSION").write_text(version + "\n", encoding="utf-8")
    else:
        version = (ROOT / "VERSION").read_text(encoding="utf-8").strip()

    if not re.fullmatch(r"\d+\.\d+\.\d+", version):
        print(f"версія «{version}» має бути вигляду 1.2.3", file=sys.stderr)
        return 1

    pom = ROOT / "java" / "pom.xml"
    text = pom.read_text(encoding="utf-8")
    text, n = re.subn(
        r"(<artifactId>kite-contracts</artifactId>\s*\n\s*<version>)[^<]+(</version>)",
        rf"\g<1>{version}\g<2>",
        text,
        count=1,
    )
    if n != 1:
        print("не знайшов версію в java/pom.xml", file=sys.stderr)
        return 1
    pom.write_text(text, encoding="utf-8")

    cfg = ROOT / "tools" / "openapi-generator-dart.yaml"
    text = cfg.read_text(encoding="utf-8")
    text, n = re.subn(r"(pubVersion: )\S+", rf"\g<1>{version}", text, count=1)
    if n != 1:
        print("не знайшов pubVersion у tools/openapi-generator-dart.yaml", file=sys.stderr)
        return 1
    cfg.write_text(text, encoding="utf-8")

    spec = ROOT / "openapi" / "openapi.yaml"
    text = spec.read_text(encoding="utf-8")
    text, n = re.subn(r"(?m)^(  version: )\S+", rf"\g<1>{version}", text, count=1)
    if n != 1:
        print("не знайшов info.version в openapi/openapi.yaml", file=sys.stderr)
        return 1
    spec.write_text(text, encoding="utf-8")

    pkg = ROOT / "ts" / "package.json"
    text = pkg.read_text(encoding="utf-8")
    text, n = re.subn(r'(?m)^(  "version": )"[^"]+"', rf'\g<1>"{version}"', text, count=1)
    if n != 1:
        print("не знайшов version у ts/package.json", file=sys.stderr)
        return 1
    pkg.write_text(text, encoding="utf-8")

    lock = ROOT / "ts" / "package-lock.json"
    text = lock.read_text(encoding="utf-8")
    # Версія кореневого пакета стоїть у lock-файлі двічі: зверху і в packages[""].
    text, n = re.subn(
        r'(?s)("name": "@kite/contracts",\s*"version": )"[^"]+"', rf'\g<1>"{version}"', text
    )
    if n != 2:
        print("не знайшов версію @kite/contracts у ts/package-lock.json", file=sys.stderr)
        return 1
    lock.write_text(text, encoding="utf-8")

    pyproject = ROOT / "python" / "pyproject.toml"
    text = pyproject.read_text(encoding="utf-8")
    text, n = re.subn(r'(?m)^(version = )"[^"]+"', rf'\g<1>"{version}"', text, count=1)
    if n != 1:
        print("не знайшов version у python/pyproject.toml", file=sys.stderr)
        return 1
    pyproject.write_text(text, encoding="utf-8")

    print(f"версія {version}: VERSION, pom.xml, Dart, openapi.yaml, package.json, pyproject.toml")
    return 0


if __name__ == "__main__":
    sys.exit(main())
