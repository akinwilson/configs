# Configuration file info 

## Setting up `vim` 

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


