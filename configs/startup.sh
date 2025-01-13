#!/bin/bash 
echo "Setting up shell ..."
sudo apt update -y
sudo apt install curl -y


echo "Installing zsh ..."
sudo apt install zsh -y
echo "Installing git ..."
sudo apt-get install git -y
echo "Installing oh-my-zsh..."
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Copying over zshrc file from git repo ..."
curl -o ~/.zshrc https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/zshrc
echi "Copying over bashrc file from git repo ..."
curl -o ~/.bashrc https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/bashrc

echo "Installing tmux .."
sudo apt install tmux -y 


echo "Installing pyenv ..."
curl https://pyenv.run | bash

echo "Sourcing zsh configuration ..."
source ~/.zshrc

echo "Installing docker ..."

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Allowing docker to be accessed as non-root user 
sudo groupadd docker 
sudo usermod -aG docker $USER 
newgrp docker 
echo "Setting up tmux packages ..."

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


echo "Copying over tmux plugin configurations ..."
curl -o ~/.tmux.conf https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/tmux.conf


echo "Installing kubectl ..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "Installing rust ..."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing vim plugin manager..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Copy vim configuration files ..."
curl -o ~/.vim/Makefile https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/vim/Makefile
curl -o ~/.vim/init.vim https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/vim/init.vim


echo "Installing cmake ..."

sudo apt install cmake -y  


echo "Installing make ..."
sudo apt install make -y 



###
echo "Installing vim from source ..."

sudo apt-get install libncurses-dev
git clone https://github.com/vim/vim.git ~/
cd vim/src
./configure --with-features=huge --enable-python3interp
make
sudo make install



echo "Running Makefile to create symlinks for vimrc files ..."
make -C ~/.vim

echo "Installing vim plugins from inside vim..."
vim +PlugInstall +qall 



echo "Installing python-dev to access header files to build extensions ..."
sudo apt-get install python3-dev -y

echo "Installing build essentials for compiling c files ..."
sudo apt-get update && sudo apt-get install build-essential -y 



echo "Installing YouCompleteMe vim extension ..."
~/.vim/vendor/youcompleteme/install.py --racer-completer



echo "Installing python pip..."

sudo apt install python3-pip -y 

echo "Installing pipenv ..."
pip install pipenv --user 

echo "Installing vscode ..."
sudo snap install --classic code


