#!/bin/bash

set -x

export DEBIAN_FRONTEND=noninteractive

apt update && apt upgrade -y

# Set Firewall
if [ -e "/etc/network/if-pre-up.d/iptables" ]; then
    rm -f /etc/network/if-pre-up.d/iptables
    rm -f /etc/iptables/iptables.rules
fi

ufw allow 22222
ufw default deny
ufw --force enable

# Set up ssh authentication
apt install curl -y
mkdir .ssh
curl https://github.com/yu1k.keys > .ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Change ssh settings
echo 'Port 22222' >> /etc/ssh/sshd_config
echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config
echo 'PubkeyAuthentication yes' >> /etc/ssh/sshd_config

# SSHコンフィグを再起動
/etc/init.d/ssh restart

# 各種コマンドをインストール
apt install -y \
gcc \
vim \
git \
nmap \
grep \
tmux \
screenfetch \
sysstat \
net-tools \
htop \
traceroute \
iftop

#処理が完了した時のメッセージ
echo "Completed to processing."

reboot
