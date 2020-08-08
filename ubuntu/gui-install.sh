#!/bin/sh

#アップデート
apt update && apt upgrade -y

#デスクトップ版Ubuntuをインストール
apt install ubuntu-desktop -y

#Chromeをインストール
apt install chrome-browser -y

#再起動
reboot