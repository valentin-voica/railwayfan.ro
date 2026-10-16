#!/usr/bin/env bash
find . -type f -name '*.md' -exec sh -c '
  for file do
    printf "\n=== %s ===\n" "$file"
    cat "$file"
  done
' sh {} +
