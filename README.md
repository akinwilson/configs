# Personal configurations 
![](img/configs.jpg "configuration")
## Overview 
Having to touch a mouse whilst developing software can be considered a [cache](https://en.wikipedia.org/wiki/Cache_(computing)) miss. Having to continously switch between using the keyboard and mouse/trackpad slows down productively. This repository contains the configuration files to allow a developer to avoid using the mouse/trackpad during software development, replying on [vim](https://en.wikipedia.org/wiki/Vim_(text_editor)) - the text editor, and [tmux](https://en.wikipedia.org/wiki/Tmux) - the terminal multiplexer, to acheive this workflow.  

## Setup
Assuming you have a clean machine; a fresh installation of the Debian distribution of Ubuntu, you can use the `config/startup.sh` script to install the usual tools found in a developer's toolkit; `vim`, `zsh`, `vscode`, `docker` etc. **Note**: the script will pull configuration files from this repostory too. To setup a fresh machine, run:
```
configs/startup.sh
```
## Configs 
Please read the `configs/README.md` for installation process for `tmux` and `vim`. The rest of the configuration files like `bashrc`, `zshrc` and `vscode.settings.json` need to just replace their respective version on your local machine. To use the `zshrc` configuration file, you will need [oh my zsh](https://ohmyz.sh/) installed. Please follow the hyperlink to do so if you wish to manually install it. The `configs/startup.sh` installs `zsh` for you though, so dont worry about manually doing it

## Scripts 
This was an old application which contains a [system service](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html) configuration file to automate the process of syncing these configurations. I don't personally use this system service, but it is there for anyone else to make use of. In essence, it explains to you how to setup system services, with the configuration syncing just being an application of a system service.   


