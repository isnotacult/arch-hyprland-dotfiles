#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "[1/4] Creating config directories..."
mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/bin"

echo "[2/4] Restoring dotfiles..."
rsync -a "$REPO_DIR/home/.config/" "$HOME/.config/"
rsync -a "$REPO_DIR/home/.local/bin/" "$HOME/.local/bin/" 2>/dev/null || true

if [ -f "$REPO_DIR/home/.zshrc" ]; then
  cp "$REPO_DIR/home/.zshrc" "$HOME/.zshrc"
fi

chmod +x "$HOME/.local/bin/"* 2>/dev/null || true

echo "[3/4] Reloading Hyprland if available..."
hyprctl reload 2>/dev/null || true

echo "[4/4] Done."
