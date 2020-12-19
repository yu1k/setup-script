#!/bin/sh

apt update && \
apt upgrade -y && \
apt install -y \
gcc \
g++ \
vim \
git \
ruby \
ssh \
ufw \
nmap \
grep \
curl \
tmux \
screenfetch \
sysstat \
net-tools \
htop \
traceroute \
iftop

#処理が完了した時のメッセージ
echo "Completed to processing."
