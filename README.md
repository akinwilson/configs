# Personal configurations 
![](img/configs.jpg "configuration")
## Overview 
Having to touch a mouse whilst developing software can be considered a [cache](https://en.wikipedia.org/wiki/Cache_(computing)) miss. Having to continously switch between using the keyboard and mouse/tracking slows down productively. This repository contains the configuration files to allow a developer to avoid using the mouse/trackpad during software development, replying on [vim](https://en.wikipedia.org/wiki/Vim_(text_editor)) - the text editor, and [tmux](https://en.wikipedia.org/wiki/Tmux) - the terminal multiplexer, to acheive this workflow.  

## Automated tracking 
The `scripts/` directory contains bash scripts to automatically sync configuration files with this repository. It requires you to have a service (a service visible via [systemctl](https://en.wikipedia.org/wiki/Systemd)) locally running. I personal do not use this automated tracking service, but it is here for others to make us of if they choose to automate the configuration tracking on their personal machines. 

## Configs 
Please read the `configs/README.md` for installation process for `tmux` and `vim`. The rest of the configuration files like `bashrc`, `zshrc` and `vscode.settings.json` need to just replace their respective version on your local machine. To use the `zshrc` configuration file, you will need [oh my zsh](https://ohmyz.sh/) installed. Please follow the hyperlink to do so.  

```
.
│├── bashrc
│├── commands
││   ├── tmux.md
││   └── vim.md
│├── fixed-mac-address.rules
│├── install-jpnb.py
│├── jupyter-notebook-configs
│├── README.md
│├── tmux.conf
│├── vim
││   ├── init.vim
││   └── Makefile
│├── vscode.settings.json
│├── zshenv
│└── zshrc
```





