#!/bin/bash

set -euo pipefail

UNAME_INFO=`uname -a`

if [[ "$UNAME_INFO" == *Ubuntu* ]]; then
    echo 'Ubuntuです。'
    #
    # nvmの設定
    # ref: https://github.com/nvm-sh/nvm#readme
    #
    # NVMのインストール
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    # reload config
    echo '~/.bashrc を読み込みます。'
    source ~/.bashrc
    # Check
    which -a nvm
    nvm --version

    #
    # node.js をインストール
    # ref: https://github.com/nvm-sh/nvm#usage
    #
    echo 'Node.js の最新版をインストールします。'
    nvm install v10.14.2
    nvm use v10.14.2
    #WHICH_NODEJS=`nvm which node`
    #echo 'Node.js は ' + $WHICH_NODEJS + ' にインストールされました。'
    NODE_VERSION=`node --version`
    echo 'Node.js のバージョンは ' + $NODE_VERSION + 'です。'

    # exit
    echo "done..." && exit 0
else
    echo 'Ubuntu 以外のOSはこのシェルスクリプトでは対応していません。別の手順を利用してください。'
    exit 1
fi