#!/bin/bash
if [ ! -d "CRAC-plugin/" ]; then
    echo " ----------------------------
  Cloning repository
 ----------------------------"
    git clone https://github.com/rafaelaBrum/CRAC-plugin.git
fi
if [ ! -d "CRAC-plugin/bin/" ]; then
        echo " ----------------------------
  Compiling DMTCP and CRAC
 ----------------------------"
    cd CRAC-plugin
    ./configure
    make -j4
    cd contrib/split-cuda
    make -j4
    cd ~/
fi
if [ -z $LD_LIBRARY_PATH ]; then
        echo " ----------------------------
  Updating LD_LIBRARY_PATH and PATH env variables
 ----------------------------"
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/ubuntu/CRAC-plugin/contrib/split-cuda/:/usr/local/cuda-10.0/lib64
