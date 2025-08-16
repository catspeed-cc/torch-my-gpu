#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Script is located in: $SCRIPT_DIR"   
echo ""

cd $SCRIPT_DIR

python3 -m venv .venv

source .venv/bin/activate

pip install --upgrade pip

apt install -y nvtop

pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --no-cache-dir --force-reinstall

# order cuda devices by PCI_BUS_ID ascending
echo "export CUDA_DEVICE_ORDER=PCI_BUS_ID" | tee -a ~/.bashrc

# add the script bin to the PATH
echo "export PATH=\$PATH:$SCRIPT_DIR/bin" | tee -a ~/.bashrc

source ~/.bashrc

echo "Installation should be completed."
