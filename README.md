This repository is an example of using OpenRoberta software on an emulated arm1176 CPU.
init.sh scripts downloads, unpacks, modifies and converts a Raspberry Pi image version 3.0.2 to a format usable by qemu
start.sh starts the emulation

init.sh will ask for sudo password several times, for mounting and modifying the image.

After start of the simulation a local port 5022 is opened and accepts SSH connections.
It is possible to either edit the start script to redirect port 80 as well, or simply use SSH tunneling.
An example of an SSH command for forwarding port 80 to 8080 on your local machine:
ssh pi@localhost -p 5022 -L 8080:localhost:80

Please note, that for port redirect superuser rights are required, so please invoke start.sh with sudo command.

This emulation is not as fast, since I managed to emulate only ARM11 with 256MB of RAM. QEMU raspi2 machine as well as 
generic virt machines did not work for me (and many other people). There can be a possibility to run different machines,
but it requires more experimentation.
