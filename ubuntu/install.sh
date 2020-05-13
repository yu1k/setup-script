#!/bin/sh

apt update && \
apt install \
gcc \
g++ \
vim \
git \
ruby \
ssh \
ufw \
nmap \
grep \
screenfetch \
sysstat \
net-tools \

#前提ソフトウェア
apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
