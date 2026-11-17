#!/bin/sh
# Генерує pydantic-моделі для Python-пакета kite_contracts. Запускається в
# контейнері python:3.15-slim з Makefile — локально Python-тулчейн не потрібен.
set -eu
pip install -q --disable-pip-version-check --user \
  'datamodel-code-generator[ruff]==0.97.0' 2>/dev/null
PATH="$HOME/.local/bin:$PATH"
datamodel-codegen \
  --input build/kite-contracts.openapi.json \
  --input-file-type openapi \
  --openapi-scopes schemas \
  --output python/src/kite_contracts/models.py \
  --output-model-type pydantic_v2.BaseModel \
  --target-python-version 3.12 \
  --formatters ruff-check ruff-format \
  --use-standard-collections \
  --use-union-operator \
  --use-annotated \
  --collapse-root-models \
  --field-constraints \
  --snake-case-field \
  --allow-population-by-field-name \
  --use-schema-description \
  --use-field-description \
  --use-subclass-enum \
  --enum-field-as-literal one \
  --capitalise-enum-members \
  --disable-timestamp \
  --use-double-quotes
ruff format -q python/src/kite_contracts/registry.py
