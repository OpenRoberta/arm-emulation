wget https://www.roberta-home.de/fileadmin/raspberryPi/raspberry-stretch-lite-OR-3.0.2.zip
unzip raspberry-stretch-lite-OR-3.0.2.zip
mkdir mnt
sudo mount -o offset=50331648 raspberry-stretch-lite-OR-3.0.2.img mnt
sudo sed -i 's/PARTUUID=ede8e9e4-01/\/dev\/sda1/g' ./mnt/etc/fstab
sudo sed -i 's/PARTUUID=ede8e9e4-02/\/dev\/sda2/g' ./mnt/etc/fstab
sudo umount ./mnt
rm -r ./mnt
qemu-img convert -f raw -O qcow raspberry-stretch-lite-OR-3.0.2.img raspberry-stretch-lite-OR-3.0.2.qcow
rm raspberry-stretch-lite-OR-3.0.2.img raspberry-stretch-lite-OR-3.0.2.zip
