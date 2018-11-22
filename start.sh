#!/bin/bash
qemu-system-arm -kernel ./kernel-qemu-4.4.34-jessie -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda raspberry-stretch-lite-OR-3.0.2.qcow -cpu arm1176 -m 256 -M versatilepb -redir tcp:5022::22 -no-reboot -serial stdio -net nic -net user -net tap,ifname=vnet0,script=no,downscript=no
