#!/bin/bash 
echo "Setting up shell ..."
sudo apt update -y
sudo apt install curl -y


echo "Installing git ..."
sudo apt-get install git -y
echo "Installing oh-my-zsh..."
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh ..."
sudo apt install zsh -y

echo "Copying over jupyter-notebook configuration ..."
curl -o $HOME/.ipython/profile_default/startup/00-supress-warnings-print-all.py https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/00-supress-warnings-print-all.python3 

echo "Copying over zshrc file from git repo ..."
curl -o ~/.zshrc https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/zshrc
echi "Copying over bashrc file from git repo ..."
curl -o ~/.bashrc https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/bashrc
echi "Copying over zshenv file from git repo ..."
curl -o ~/.zshenv https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/zshenv
echo "Copying over tmux plugin configurations ..."
curl -o ~/.tmux.conf https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/tmux.conf



echo "Installing tmux .."
sudo apt install tmux -y 



echo "Installing pyenv ..."
curl https://pyenv.run | bash

# echo "Sourcing zsh configuration ..."
# source ~/.zshrc

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

echo "Installing nvidia container toolkit ..."
curl https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/install_nividia_container_toolkit.sh | sh

echo "Installing tmux plugin manager ..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "sourcing tmux configuration ..."
tmux source ~/.tmux.conf


echo "Installing kubectl ..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "Installing rust ..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y


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

echo "installing ffmpeg ..."
sudo apt install ffmpeg -y

###
echo "Installing vim from source ..."

sudo apt-get install libncurses-dev
git clone https://github.com/vim/vim.git 
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



# https://kind.sigs.k8s.io/docs/user/quick-start/
echo "Installing kind ..."
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.26.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind


echo "Installing network-related cli tools, e.g. ifconfig ...."
sudo apt-get install net-tools -y 

echo "Installing node ..."
sudo apt install nodejs -y 

echo "Installing node package manager ..."
sudo apt install npm -y 


echo "Setting up GPU device drivers ...."
# https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-22-04
sudo ubuntu-drivers autoinstall || sudo ubuntu-drivers install nvidia:550

echo "Moving application dock to bottom of screen ..."

# Display-related 
# https://linuxconfig.org/how-to-customize-dock-panel-on-ubuntu-20-04-focal-fossa-linux
sudo apt-get install dconf-editor -y 

gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM




