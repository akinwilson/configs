# Personal configurations 
![](img/configs.jpg "configuration")
## Overview 
Having to touch a mouse whilst developing software can be considered a [cache](https://en.wikipedia.org/wiki/Cache_(computing)) miss. Having to continously switch between using the keyboard and mouse/trackpad slows down productively. This repository contains the configuration files to allow a developer to avoid using the mouse/trackpad during software development, replying on [vim](https://en.wikipedia.org/wiki/Vim_(text_editor)) - the text editor, and [tmux](https://en.wikipedia.org/wiki/Tmux) - the terminal multiplexer, to acheive this workflow.  

## Installation
*One-liner*
```bash
curl -s https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/startup.sh | bash
```
You can run this without clone the repo on your local machine and it's  terminal shell, IDE, and [multiplexer](https://en.wikipedia.org/wiki/Terminal_multiplexer) will be setup for you.**NOTE** You need to make **one** manual adjustment for the text-package to be loaded. Click 



Here is the burger button inline: <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3 6H21" stroke="#CDCDCD" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 12H21" stroke="#CDCDCD" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 18H21" stroke="#CDCDCD" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg> and some more text.


### Setup
Assuming you have ( preferably a clean) installation of the Debian distribution of Linux like [Ubuntu](https://ubuntu.com/download), you can reveiew the `config/startup.sh` script to what see exactly what packages and tools will be installed alone with which configuration files, giving you information about the keyboard shortcut setup and so on.


## Configs 
Please read the `configs/README.md` file  for installation process for `tmux` and `vim` individually or how it is performed by the `startup.sh` script. There are a few other system and developer tool packages that are install during  `startup.sh`, like `kubectl`, `minikube`, `docker` for containerised developement and ochestration, along with some others. So please reveiw the script before executing it.

## Scripts 
If you have tend to use a single machine, you might find this  folder `/scripts` useful. This was an old application of a [system service](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html) to automate the process of syncing these configurations with a primary host machine,when changes are machine on the host machine. But I decided to stop using it as I would find myself making changes to the configuration on many machines instead of just one, and saving them, testing them out, and then adjusting these `/config/*` files in this repo after settling for the best configuration. I don't personally use this system service anymore, but it is there for anyone else to make use of if they normally just use one machine, rather than say a work laptop, personal laptop, workstation etc.


