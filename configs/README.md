# Setup

## Tmux 
Before being able to apply the Tmux configurations in `tmux.conf` file, you will need the [tmux plugin manager](https://github.com/tmux-plugins/tpm). Please follow the guide hyperlinked. In essence, all you need to run is the following command:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
then, copy the configuration file `tmux.conf` to the local location of `~/.tmux.conf`

Finally, install the tmux plugins, press the hotkeys
```
[ctrl + b] + I
```
where `I` stands for **I**nstall. The tmux plugin manager will then install all the required plugins listed in (what should be) your local copy of `~/.tmux.conf`. 

## Vim  

Vim has many plugin manager and in order to converge to a stable design pattern for handling all the various plugins, I followed [this](https://github.com/junegunn/vim-plug)


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

## Setting up `tmux`


when ever a change is made to `~/.tmux.conf`, install the required plugins with
```
[crtl + b] + I
```

clean your plugin repository via uninstall older/unused ones with 
```
[ctrl + b] + [atl + u]
```

source the current configuration file for`tmux` with 
```
[ctrl + b] :source-file ~/.tmux.conf 
```


