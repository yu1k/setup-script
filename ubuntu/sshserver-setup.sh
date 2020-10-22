#!/bin/bash

sudo apt update && apt upgrade -y

sudo apt autoremove

# openssh-server, vimをインストール
sudo apt install -y \
vim \
openssh-server

# openssh-serverがインストールができたかを確認
dpkg -l | grep ssh

# 直前のコマンドの結果の確認。エンターキーを押すまで待機
read -p "Hit enter: "

# サーバが動作しているかを確認
ps -ax | grep ssh

# 直前のコマンドの結果の確認。エンターキーを押すまで待機
read -p "Hit enter: "

# ファイアウォール
sudo ufw enable

sudo ufw status

sudo ufw allow [開放するポート番号]

sudo ufw reload

sudo ufw status

# sshdの設定
# バックアップ
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.old

# SShで使用するポートなどの設定をする
sudo vim /etc/ssh/sshd_config

# 直前のコマンドの結果の確認。エンターキーを押すまで待機
read -p "Hit enter: "

# sshdの再起動
service sshd restart

# 処理が完了したことを表示
echo "Processing... Done"