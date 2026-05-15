#!/usr/bin/env bash
set -euo pipefail

SRC="${1:-}"
DEST="${2:-}"

if [[ -z "$SRC" || -z "$DEST" ]]; then
  echo "Usage: ./move.sh <source> <destination>"
  exit 1
fi

if [[ ! -d "$SRC" ]]; then
  echo "Source directory not found: $SRC"
  exit 1
fi

mkdir -p "$DEST"

echo "Source:      $SRC"
echo "Destination: $DEST"
echo

read -r -p "Continue? [y/N]: " CONFIRM

if [[ "$CONFIRM" != "y" ]]; then
  echo "Cancelled."
  exit 0
fi

rsync -a --remove-source-files "$SRC"/ "$DEST"/

find "$SRC" -type d -empty -delete

echo "Move completed successfully."