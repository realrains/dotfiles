#!/bin/sh

set -e 
set -o pipefail

# Install tmux if not installed
if ! command -v tmux >/dev/null 2>&1; then
    echo "Installing tmux..."
    brew install tmux
else
    echo "tmux is already installed. Skipping installation."
fi

# Clone TPM (Tmux Plugin Manager) if not already cloned
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ -d "$TPM_DIR" ]; then
    echo "TPM already exists. Skipping cloning."
else
    echo "Cloning TPM..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

# Create symlink for .tmux.conf if it doesn't already exist
TMUX_CONF="$HOME/.tmux.conf"
SOURCE_CONF="$(pwd)/.tmux.conf"
if [ -f "$TMUX_CONF" ] || [ -L "$TMUX_CONF" ]; then
    echo "$TMUX_CONF already exists. Skipping symlink creation."
else
    echo "Creating symlink for .tmux.conf..."
    ln -s "$SOURCE_CONF" "$TMUX_CONF"
fi

