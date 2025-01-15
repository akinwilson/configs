# Setup

## Overview 
The `startup.sh` script will install all the usual applications like `docker`, `kind`, `vim`, `tmux`, `code` etc and configure the application dock to be relocated to the bottom of the screen. The easiest way to run it would be via

```
curl https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/startup.sh | bash
```
The following sections gives an overview of how to use `tmux` and `vim` especially, since they come with their own package managers and workflows unique to themselves. Any setup like installing the package managers for either `tmux` or `vim` is encompassed in the `startup.sh` script. So if you would like to set things with a *one-liner* the above command is your friend. 

**Note**: The `startup.sh` script assumes you have an `x86_64` architecture. 


## Tmux 
 Before being able to apply the Tmux configurations in `tmux.conf` file, you will need the [tmux plugin manager](https://github.com/tmux-plugins/tpm). Please follow the guide hyperlinked. In essence, all you need to run is the following command:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Then, copy the configuration file `tmux.conf` to the local location of `~/.tmux.conf`

Finally, install the tmux plugins, press the hotkeys
```
[ctrl + b] + I
```
where `I` stands for **I**nstall. The tmux plugin manager will then install all the required plugins listed in (what should be) your local copy of `~/.tmux.conf`. 


Please see the file `tmux.commands.md` for more information on the possible hotkeys to use with `tmux`


## Vim  

You need to install a vim plug-in manager. In essence, all you need to run is the follow command:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
This will install the [vim plug-in manager](https://github.com/junegunn/vim-plug). 

Next you will want to copy the the `vim` directory of this repository to your local filesystem under `~/.vim`. 


To install the plugins listed in `init.vim`.  open vim, and run the command **from inside vim** 
```
:PlugInstall
```
Next, you need to install additional requirements for the code completion library of [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe). To install the additional plugins from YouCompleteMe, you will need the `cmake` executable install. Run:

```
sudo apt install cmake -y 
```
Then, you are ready to install the code completion plugin of YouCompleteMe  via running 
```
~/.vim/vendor/youcompleteme/install.py --racer-completer
```

You need to [symlink](https://en.wikipedia.org/wiki/Symbolic_link) the configuration files for `vim`, such that the `~/.vimrc` is generated from `~/.vim/init.vim`. This can be achieved by running the `Makefile`. I.e. from inside of the directory `~/.vim` run:
```
make
```
## To do 29 Dec 2024
1) Build a script which automates the setup of `tmux` and `vim` to avoid manually having to enter these commands.
2) Add readme for `tmux` and `vim` hotkey commands.
3) Add inforamtion about other configuration files in this repository. 
