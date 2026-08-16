#!/usr/bin/env bash
set -euo pipefail

echo "[1/3] Installing packages from system/pacman-explicit.txt..."

if [ ! -f system/pacman-explicit.txt ]; then
  echo "Missing system/pacman-explicit.txt"
  exit 1
fi

sudo pacman -Syu --needed - < system/pacman-explicit.txt

echo "[2/3] Restoring configs..."
./restore.sh

echo "[3/3] Done."
