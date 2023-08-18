export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/home/otis/.local/bin"

eval "$(pyenv init --path)"

# Path to your oh-my-zsh installation.
export ZSH="/home/otis/.oh-my-zsh"

# export PATH="/usr/local/cuda-11.3/bin:$PATH"
# export LD_LIBRARY_PATH="/usr/local/cuda-11.3/lib64:$LD_LIBRARY_PATH"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git, pyenv, aws, docker, docker-compose, docker-machine, node, npm, sublime-merge, pipenv)

plugins=(git pyenv docker docker-compose pipenv)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vi'
fi
export  EDITOR='/usr/bin/vi'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# aliases
alias jp="jupyter notebook"
alias stc="speedtest-cli --secure"
alias tf="terraform"
alias python="python3"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gc="git commit"
alias gd="git diff"
alias docker-compose="docker compose"
alias dc="docker compose"
alias d="docker"
alias k="kubectl"
alias mk="minikube"
alias cl="clear"
alias cr="cargo run"
alias cb="cargo build"
eval "$(pyenv init -)"

# auto complete for cli tools 
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
[[ $commands[minikube] ]] && source <(minikube completion zsh)
