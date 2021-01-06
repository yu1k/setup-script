#!/bin/bash

set -x

apt install -y git

git config --global user.name "yu1k"

git config --global user.email 48705423+yu1k@users.noreply.github.com

git config --global core.editor "vim"

echo "Git is ready to use now."
