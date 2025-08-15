# torch-my-gpu
A torch stress test for your NVidia GPU written in Python (compatible with enterprise GPUs like A100)

## Warranty Disclaimer
There is no warranty, expressed or implied, to the extent allowable by law within your jurisdiction. The developer assumes no liability for operations, malfunctions, and errors of the script, or hardware damage during testing.

## Development Warning
Currently in development. Will release v1.0.0 shortly... Just getting it set up for distribution :)

-----

Script does work if you want to try, I suggest monitoring the temps and also running a stress on any GPU's you wish to test. Use `nvidia-smi` to get the index and run `gpu-stress-cpu-and-memory 0` change 0 to the index. You need torch. I cant help more than that I will push for v1.0.0 :)

BTW, I am not liable for damages to your hardware, caused by either the script, or your hardware exploding under 100% load. If testing is done correctly this shouldn't happen :) Monitor your temps and ensure power delivery is reliable and stable. Don't plug your A100 rig into same circuit as your air conditioner :P

~ mooleshacat

EOF
