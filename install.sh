#!/usr/bin/env bash
# ============================================================
#  install.sh — installs gitflow into ~/.local/bin
# ============================================================

set -euo pipefail

DEST="$HOME/.local/bin/gitflow"
mkdir -p "$HOME/.local/bin"

cp "$(dirname "$0")/gitflow" "$DEST"
chmod +x "$DEST"

if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
  echo ""
  echo "⚠  Add this to your ~/.bashrc or ~/.zshrc:"
  echo ""
  echo '  export PATH="$HOME/.local/bin:$PATH"'
  echo ""
fi

echo "✔ gitflow installed → $DEST"
echo "  Run: gitflow help"
