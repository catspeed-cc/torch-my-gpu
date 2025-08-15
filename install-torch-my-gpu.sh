#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Script is located in: $SCRIPT_DIR"   
echo ""

cd $SCRIPT_DIR

python3 -m venv .venv

source .venv/bin/activate

pip install --upgrade pip

pip3 install nvtop

pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --no-cache-dir --force-reinstall

echo "export PATH=\$PATH:$SCRIPT_DIR/bin" | tee -a ~/.bashrc

export PATH=$PATH:$SCRIPT_DIR/bin

echo "Installation should be completed."
