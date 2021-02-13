#!/bin/bash
wget https://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run
sudo apt-get update -y
sudo apt install -y python gcc-8 g++-8 libc6-dbg build-essential vim git
sudo sh cuda_10.2.89_440.33.01_linux.run --driver --toolkit --samples --silent
git clone https://github.com/azevedogustavo/IC.git
cd ./IC
chmod +x config.sh
. config.sh
