#!/bin/bash

docker build --rm \
       -f Dockerfile-builder \
       -t box-builder .

docker run --rm -it \
       -v $PWD:/mnt \
       box-builder \
       cp /rootfs.tar.gz /mnt