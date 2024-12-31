#!/bin/bash 
# source: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
set -e 

echo "Configuring the production repository ..."
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

echo "Updating apt repository ..."
sudo apt-get update

echo "Installing container nvidia toolkit ..."
sudo apt-get install -y nvidia-container-toolkit

echo "Configuring container runtime ..."
sudo nvidia-ctk runtime configure --runtime=docker

echo "Restarting docker daemon ..."
sudo systemctl restart docker
