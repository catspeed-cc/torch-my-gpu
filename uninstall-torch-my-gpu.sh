#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Uninstall script running from: $SCRIPT_DIR"
echo ""

# Remove the block from ~/.bashrc if markers exist
if grep -q "# managed by torch-my-gpu (BEGIN)" ~/.bashrc || grep -q "# managed by torch-my-gpu (END)" ~/.bashrc; then
    echo "Removing torch-my-gpu configuration from ~/.bashrc..."
    sed -i.bak '/# managed by torch-my-gpu (BEGIN)/,/# managed by torch-my-gpu (END)/d' ~/.bashrc
    echo "Backup of original ~/.bashrc saved as ~/.bashrc.bak"
    echo "Updated ~/.bashrc."
else
    echo "~/.bashrc does not contain torch-my-gpu configuration. No changes made."
fi

# Deactivate virtual environment if active
if [[ "$VIRTUAL_ENV" == "$SCRIPT_DIR/.venv" ]]; then
    echo "Deactivating virtual environment..."
    deactivate
fi

# Remove the virtual environment
if [[ -d "$SCRIPT_DIR/.venv" ]]; then
    echo "Removing virtual environment at $SCRIPT_DIR/.venv..."
    rm -rf "$SCRIPT_DIR/.venv"
fi

# Optionally: remove nvtop (comment out if you want to keep it)
echo "Note: nvtop was installed system-wide. Keeping it installed (uninstall manually with 'apt remove nvtop' if needed)."

echo "Uninstall complete."   