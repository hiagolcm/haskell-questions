#!/usr/bin/env bash
# Exercises are grouped into chapters:
#   01-starting-out/01-temperature-logic/...
#   02-types-and-typeclasses/01-showing-lists/...
#
# Usage:
#   ./run-tests.sh                 # run every exercise in every chapter
#   ./run-tests.sh all             # same as above
#   ./run-tests.sh 02              # every exercise in chapter 02 (prefix match)
#   ./run-tests.sh 02 03           # one exercise (chapter 02, exercise 03)
set -uo pipefail
cd "$(dirname "$0")"

run_one() {
  local dir="$1"
  echo ""
  echo "########## ${dir} ##########"
  runghc -i"${dir}" -i. "${dir}/tests/Spec.hs"
}

run_chapter() {
  local ch="$1"
  local status=0
  for ex in "$ch"/[0-9][0-9]-*/; do
    ex="${ex%/}"
    run_one "$ex" || status=1
  done
  return "$status"
}

# whole suite
if [[ $# -eq 0 || "$1" == "all" ]]; then
  status=0
  for ch in [0-9][0-9]-*/; do
    ch="${ch%/}"
    run_chapter "$ch" || status=1
  done
  exit "$status"
fi

# resolve chapter by prefix
chapter=$(find . -maxdepth 1 -type d -name "${1}*" | sed 's|^\./||' | head -1)
if [[ -z "$chapter" ]]; then
  echo "No chapter matching '$1'. Available:"
  for ch in [0-9][0-9]-*/; do echo "  - ${ch%/}"; done
  exit 1
fi

# whole chapter
if [[ $# -eq 1 ]]; then
  run_chapter "$chapter"
  exit "$?"
fi

# one exercise within the chapter
exercise=$(find "$chapter" -mindepth 1 -maxdepth 1 -type d -name "${2}*" | sed 's|^\./||' | head -1)
if [[ -z "$exercise" ]]; then
  echo "No exercise matching '$2' in $chapter. Available:"
  for ex in "$chapter"/[0-9][0-9]-*/; do echo "  - ${ex%/}"; done
  exit 1
fi
run_one "$exercise"
