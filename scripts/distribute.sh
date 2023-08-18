#!/bin/bash 

set -e 

echo "Updating local node's [$(hostname)] configuration files with repository ..."

sudo cp ./configs/vimrc ~/.vimrc
sudo cp ./configs/zshrc ~/.zshrc
sudo 

