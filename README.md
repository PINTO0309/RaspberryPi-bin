# RaspberryPi-bin
OS image repository for Raspberry Pi3.

# 1. Binary type

|No.|Type|OS|Download script|
|:--|:--|:--|:--|
|1|aarch64 (64 bit)|Debian (Stretch)|./Debian/Stretch/aarch64/download.sh|
|2|aarch64 (64 bit)|Debian (Buster)|./Debian/Buster/aarch64/download.sh|

# 2. Usage
```bash
$ git clone https://github.com/PINTO0309/RaspberryPi-bin.git
$ cd RaspberryPi-bin
$ ./Debian/Stretch/aarch64/download.sh
```

# 3. Build procedure example
## 3-1. Environment
- Ubuntu 16.04
- RaspberryPi3 model B/B+

## 3-2. Command scripts
```bash
$ sudo apt update
$ sudo apt install -y debootstrap debian-archive-keyring \
qemu-user-static binfmt-support dosfstools rsync bmap-tools \
whois git bc psmisc dbus sudo git crossbuild-essential-arm64
$ git clone https://github.com/drtyhlpr/rpi23-gen-image.git
$ cd rpi23-gen-image
```
```
$ sudo su

# RPI_MODEL=3 \
RELEASE=stretch \
BUILD_KERNEL=true \
KERNEL_ARCH=arm64 \
RELEASE_ARCH=arm64 \
CROSS_COMPILE=aarch64-linux-gnu- \
QEMU_BINARY=/usr/bin/qemu-aarch64-static \
KERNEL_DEFCONFIG=bcmrpi3_defconfig \
KERNEL_BIN_IMAGE=Image \
KERNEL_IMAGE=kernel8.img \
KERNEL_BRANCH=rpi-4.14.y \
ENABLE_WIRELESS=true \
TIMEZONE="Asia/Tokyo" \
EXPANDROOT=true \
ENABLE_DPHYSSWAP=true \
ENABLE_DHCP=true \
ENABLE_SYSVINIT=true \
./rpi23-gen-image.sh

# exit
```

# 4. Reference articles
1. **[Create a Debian image for Raspberry Pi3 corresponding to various architectures - Qiita - maccadoo](https://qiita.com/maccadoo/items/2986afa81ba96321c818)**  
2. **[rpi23-gen-image - Github - drtyhlpr](https://github.com/drtyhlpr/rpi23-gen-image.git)**  
