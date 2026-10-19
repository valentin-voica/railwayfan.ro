#!/usr/bin/env bash
find . -type d -name themes -prune -o -type f -name '*.md' -exec sh -c '
  for file do
    printf "\n=== %s ===\n" "$file"
    cat "$file"
  done
' sh {} +
