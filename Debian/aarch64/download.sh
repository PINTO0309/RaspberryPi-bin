#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1xD68LKkDSDgS0Oem2AqFtk-kr3cHDBFC" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1xD68LKkDSDgS0Oem2AqFtk-kr3cHDBFC" -o 2019-06-15-arm64-rpi-4.14.y-rpi3-stretch-arm64.img
sudo chmod +x 2019-06-15-arm64-rpi-4.14.y-rpi3-stretch-arm64.img

