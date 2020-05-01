#!/bin/bash
VERSION=3.7.7

sudo apt update
sudo apt install build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev tk-dev

wget https://www.python.org/ftp/python/${VERSION}/Python-${VERSION}.tgz
tar xzf Python-${VERSION}.tgz
cd Python-${VERSION}

./configure --enable-shared
make
sudo make install
sudo sh -c "echo '/usr/local/lib' > /etc/ld.so.conf.d/custom_python3.conf"
sudo ldconfig
