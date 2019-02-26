# Running NodeJS server inside Firecracker microVM

## Why Firecracker?
The startup for microvm is 125ms in ideal condition as mentioned [here](https://firecracker-microvm.github.io/). running nodejs server inside vm might take a few extra seconds, But it enables you to run untrusted user code in nodejs.

1. [network configuartion inside microVM](https://github.com/deepak6446/nodejs_in_firecracker/tree/master/network_config_inside_vm)
