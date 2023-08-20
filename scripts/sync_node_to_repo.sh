#!/bin/bash 
set -e


syncing_configs () {
  echo "syncing configuration file: $2 ... "
  while inotifywait -r -e modify,create,delete,move $HOME/$1; do
    rsync -avz $HOME/$1 $HOME/Code/configs/configs/$2
  done
}

syncing_configs ".tmux.conf" "tmux.conf" & 
syncing_configs ".vim/init.vim" "vim/init.vim" &
syncing_configs ".vim/Makefile" "vim/Makefile" & 
syncing_configs ".zshrc" "zshrc" & 
syncing_configs ".zshenv" "zshenv" & 
syncing_configs ".bashrc" "bashrc" & 
syncing_configs ".install-jpnb.py" "install-jpnb.py" &
wait 

