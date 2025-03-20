# Personal configurations 
![](img/configs.jpg "configuration")
## Overview 
Having to touch a mouse whilst developing software can be considered a [cache](https://en.wikipedia.org/wiki/Cache_(computing)) miss. Switching between using the keyboard and mouse/trackpad slows down productively. This repository contains the configuration files, packages and plugins to allow a developer to avoid using the mouse/trackpad during software development by learning a handful of <kbd>keyboard</kbd> + <kbd>shortcuts</kbd>.

For the *IDE* experience, [vim](https://en.wikipedia.org/wiki/Vim_(text_editor)) - the text editor, and [tmux](https://en.wikipedia.org/wiki/Tmux) - the multiplexer, are combined to allow for this expeirence, along with a colleciton of plugins which faciliates this *"symbiotic"* workflows between the two packages providing the IDE experience at the terminal level.

## Installation
*One-liner*
```bash
curl -s https://raw.githubusercontent.com/akinwilson/configs/refs/heads/main/configs/startup.sh | bash
```
You can run this without cloning the repository on your local machine and as a consequence  you'll have a termianl shell that you'll be able to, if you want to, treat like an IDE, this is achieved by combining aspects of a [multiplexer](https://en.wikipedia.org/wiki/Terminal_multiplexer) and a powerful text editor; `vim`. 

#### **NOTE** 
You need to make __**one**__ manual adjustment for the text package to be loaded with your terminal profile as you open your terminal to see the shell, such that, for example. the [status bar](https://github.com/rothgar/awesome-tmux#status-bar) of `tmux` is formatted properly. 

Click the <kbd>≡</kbd> button at the top of the temrinal window, RHS side, select `Preferences`, then under the `Profiles` section, select the current one(create a Profile if it doesn't exist, the name can be anything). Under the `Text` tab of the selected `Prfile`, third line from the top, tick **Csutom font** and from the drop down menu of possible font packages to select from, select any that contain the word `Nerd Font`; you can keyword search for them. Select the font, click `apply` and exit the settings. Your `tmux` [status bar](https://github.com/rothgar/awesome-tmux#status-bar) should now format properly with the next terminal you open. 



 
### Setup
Assuming you have ( preferably a clean) installation of the Debian distribution of Linux like [Ubuntu](https://ubuntu.com/download), you can reveiew the `config/startup.sh` script to what see exactly what packages and tools will be installed alone with which configuration files, giving you information about the keyboard shortcut setup and so on.


## Configs 
Please read the `configs/README.md` file  for installation process for `tmux` and `vim` individually or how it is performed by the `startup.sh` script. There are a few other system and developer tool packages that are install during  `startup.sh`, like `kubectl`, `minikube`, `docker` for containerised developement and ochestration, along with some others like `net-tools` for network monitoring and analysis. So please review the `config/startup.sh` file before executing it.

## Scripts 
If you have tend to use a single machine, you might find this  folder `/scripts` useful. This was an old application of a [system service](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html) to automate the process of syncing these configurations with a primary host machine,when changes are machine on the host machine. But I decided to stop using it as I would find myself making changes to the configuration on many machines instead of just one, and saving them, testing them out, and then adjusting these `/config/*` files in this repo after settling for the best configuration. I don't personally use this system service anymore, but it is there for anyone else to make use of if they normally just use one machine, rather than say a work laptop, personal laptop, workstation etc.


