#!/bin/bash

#apt-get install libtool m4 automake
cd curl
./buildconf
./configure --host=arm-hisiv300-linux --prefix=/home/yi-hack-v3 --disable-shared --disable-libcurl-option --disable-dict --disable-tftp --disable-pop3 --disable-imap --disable-gopher --disable-ipv6 --disable-manual
make
export DESTDIR="$PWD/_install/" && make install-strip