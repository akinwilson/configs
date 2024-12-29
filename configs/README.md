# Setup

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

Next you will want to copy the the `vim` directory of this repository to your local filesystem under `~/.vim` 


**YouCompleteMe; YCM plugin**
<br>
Whilst in `vi`, source the **`~/.vim/init.vim`**:
configurations for `~/.vimrc` will automatically updted via  symlink and from the executation of `make` [only initial sym linking setup required] and then `:source ~/.vim/init.vim` and `:PluginInstall` from `vim`


you need to configuration the YCM installation for both the **indentifier** and **semantic** completer

got to `~/.vim/vendor/youcompleteme/` and run `./install.py --racer-completer` to install the `rust-analyzer`


i.e. 

```
sudo cd  `~/.vim/vendor/youcompleteme && ./install.py --racer-completer
```

