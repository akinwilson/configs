#!/bin/bash 
set -e


syncing_configs () {
  echo "syncing configuration file: $2 ... "
  while inotifywait -r -e modify,create,delete,move $HOME/$1; do
    rsync -avz $HOME/$1 $HOME/Code/configs/configs/$2
  done
}

syncing_configs ".tmux.conf" "tmux.conf" 


