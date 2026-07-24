#!/usr/bin/env bash
# Usage:
#   ./run-tests.sh 01        # run one exercise (matches by folder prefix)
#   ./run-tests.sh all       # run every exercise
#   ./run-tests.sh           # same as "all"
set -uo pipefail
cd "$(dirname "$0")"

run_one() {
  local dir="$1"
  echo ""
  echo "########## ${dir} ##########"
  runghc -i"${dir}" -i. "${dir}/tests/Spec.hs"
}

if [[ $# -eq 0 || "$1" == "all" ]]; then
  status=0
  for d in [0-9][0-9]-*/; do
    d="${d%/}"
    run_one "$d" || status=1
  done
  exit "$status"
else
  match=$(find . -maxdepth 1 -type d -name "${1}*" | sed 's|^\./||' | head -1)
  if [[ -z "$match" ]]; then
    echo "No exercise found matching '$1'"
    echo "Available exercises:"
    for d in [0-9][0-9]-*/; do echo "  - ${d%/}"; done
    exit 1
  fi
  run_one "$match"
fi
