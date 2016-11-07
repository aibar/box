#!/bin/bash

sudo rm -rf out && mkdir -v out
cd out

mkdir -v bin

wget https://busybox.net/downloads/binaries/busybox-x86_64 -O bin/busybox
chmod +x bin/busybox

ln -s /bin/busybox bin/cat
ln -s /bin/busybox bin/chmod
ln -s /bin/busybox bin/cp
ln -s /bin/busybox bin/ln
ln -s /bin/busybox bin/ls
ln -s /bin/busybox bin/mkdir
ln -s /bin/busybox bin/mv
ln -s /bin/busybox bin/rm
ln -s /bin/busybox bin/sh
ln -s /bin/busybox bin/tar
ln -s /bin/busybox bin/touch
ln -s /bin/busybox bin/wget

ln -s /bin/busybox bin/sed
ln -s /bin/busybox bin/ps
ln -s /bin/busybox bin/tr
ln -s /bin/busybox bin/cut
ln -s /bin/busybox bin/id
ln -s /bin/busybox bin/env
ln -s /bin/busybox bin/uname
ln -s /bin/busybox bin/dirname
ln -s /bin/busybox bin/expr

sudo chown -R 0:0 bin

tar czfv ../fs.tar.gz ./*