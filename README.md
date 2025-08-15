# torch-my-gpu
A torch stress test for your GPU written in Python

Currently in development. Will release v1.0.0 shortly... Just getting it set up for distribution :)

Script does work if you want to try, I suggest monitoring the temps and also running a stress on any GPU's you wish to test. Use `nvidia-smi` to get the index and run `gpu-stress-cpu-and-memory 0` change 0 to the ID. You need torch. I cant help more than that I will push for v1.0.0 :)

BTW, I am not liable for damages to your hardware, caused by either the script, or your hardware exploding under 100% load. If testing is done correctly this shouldn't happen :) Monitor your temps and ensure power delivery is reliable and stable. Don't plug your A100 rig into same circuit as your air conditioner :P

~ mooleshacat

EOF
