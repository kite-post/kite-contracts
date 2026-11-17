#!/usr/bin/env bash
# Порівнює поточні контракти з попереднім тегом: REST — через oasdiff, події —
# через tools/compat.py. Попередній тег — останній v*, крім поточної версії
# (щоб на самому релізі не порівнювати тег із собою). BASE=v0.1.0 — вручну.
set -euo pipefail

root="$(git rev-parse --show-toplevel)"
cd "$root"
current="v$(cat VERSION)"
base="${BASE:-$(git describe --tags --abbrev=0 --match 'v*' --exclude "$current" HEAD 2>/dev/null || true)}"

if [ -z "$base" ]; then
  echo "Попереднього тегу немає — порівнювати нема з чим."
  exit 0
fi

work="$(mktemp -d)"
trap 'git worktree remove --force "$work" >/dev/null 2>&1 || rm -rf "$work"' EXIT
git worktree add --detach --quiet "$work" "$base"

echo "Збираю контракт тегу $base"
make -s -C "$work" build/openapi.json YQ_IMAGE="${YQ_IMAGE:-mikefarah/yq:latest}" >/dev/null
python3 "$work/tools/bundle.py" "$work/build/openapi.json" >/dev/null

echo "REST: oasdiff $base → робоча копія"
docker run --rm -v "$work/openapi:/base:ro" -v "$root/openapi:/head:ro" \
  "${OASDIFF_IMAGE:-tufin/oasdiff:v1.37.0}" \
  breaking /base/openapi.yaml /head/openapi.yaml --fail-on ERR

echo "Події: $base → робоча копія"
python3 tools/compat.py "$work" "$root"
