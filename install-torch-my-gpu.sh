#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Script is located in: $SCRIPT_DIR"   
echo ""

cd "$SCRIPT_DIR"

python3 -m venv .venv

source .venv/bin/activate

pip install --upgrade pip

apt install -y nvtop

pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --no-cache-dir --force-reinstall

# Check if bashrc already contains the torch-my-gpu markers
if ! grep -q "# managed by torch-my-gpu (BEGIN)" ~/.bashrc && ! grep -q "# managed by torch-my-gpu (END)" ~/.bashrc; then
    echo "# managed by torch-my-gpu (BEGIN)" | tee -a ~/.bashrc
    echo "export CUDA_DEVICE_ORDER=PCI_BUS_ID" | tee -a ~/.bashrc
    echo "export PATH=\$PATH:$SCRIPT_DIR/bin" | tee -a ~/.bashrc
    echo "# managed by torch-my-gpu (END)" | tee -a ~/.bashrc
    echo "Updated ~/.bashrc with torch-my-gpu settings."
else
    echo "~/.bashrc already contains torch-my-gpu configuration. Skipping update."
fi

# Source bashrc only if changes were made or to ensure environment is loaded
source ~/.bashrc

echo "Installation should be completed."   