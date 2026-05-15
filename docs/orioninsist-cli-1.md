# Safe Move Script

A simple and safer file move script using `rsync`.

## Features

- Safe recursive transfer
- Preserves permissions and timestamps
- Removes source files only after successful copy
- Deletes empty source directories
- Simple CLI usage

## Requirements

- Bash
- rsync

## Usage

```bash
chmod +x move.sh
./move.sh /source/path /destination/path
```

Example:

```bash
./move.sh /home/user/data /mnt/backup/data
```

## What It Does

1. Validates source and destination
2. Creates destination directory if missing
3. Asks for confirmation
4. Transfers files using `rsync`
5. Removes source files after successful transfer
6. Deletes empty source directories

## Why rsync?

`rsync` is safer than `mv` for important or large transfers because it:

- preserves metadata
- supports resume
- handles errors better
- is widely used in Linux backups and servers

## Important Flags

### `-a`

Archive mode:

- recursive copy
- preserve permissions
- preserve timestamps
- preserve symlinks

### `--remove-source-files`

Deletes source files only after successful copy.

This makes the operation behave like a safer move command.

## Script

```bash
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
```