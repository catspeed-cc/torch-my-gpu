# torch-my-gpu
A torch stress test for your NVidia GPU written in Python (compatible with enterprise GPUs like A100)

## Warranty Disclaimer
There is no warranty, expressed or implied, to the extent allowable by law within your jurisdiction. The developer assumes no liability for operations, malfunctions, and errors of the script, or hardware damage during testing.

## Development Warning
Currently in development. Will release v1.0.0 shortly... Just getting it set up for distribution :)

## Installation
- `git clone https://github.com/catspeed-cc/torch-my-gpu.git`
- `cd torch-my-gpu`
- Install the repository once `./install-torch-my-gpu.sh`

## Uninstallation
- `./uninstall-torch-my-gpu.sh`
- `cd ..`
- `rm -r torch-my-gpu`

## General Instructions
- Use `nvtop` as a way to monitor GPU
- Monitor temps throughout stress test using `tmg-gpu-temps`
- `tmg-gpu-stress 0` replace `0` with index of GPU from `nvidia-smi` you wish to stress

## Support
Please create an [issue ticket](https://github.com/catspeed-cc/torch-my-gpu/issues) for all support inquiries. Include as much detail as possible - hardware including which GPU's, command outputs, errors if any.

Master branch and version releases are supported. No support provided for development branch.

~ mooleshacat

EOF
