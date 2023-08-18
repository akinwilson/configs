#!/bin/bash 

set -e 

echo -e "Updating configuration file:\n\n$(ls -1 ./configs/*)\n\nFor host:
$(hostname)..."

for cfg_file in $(ls ./configs/*)
do
  ## echo -e  "$cfg_file"
  cfg_file=${cfg_file##*/}
  echo -e "$cfg_file"
done 


echo "****NOT FINISHED****"
