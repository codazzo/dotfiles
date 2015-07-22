# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias web='python -m SimpleHTTPServer'
alias kn='killall node'
alias lll="ls -las | awk '"'{print $10}'"'"
alias co="./script/console"
alias redie="redis-cli shutdown"
alias psn="ps aux | grep node"
alias grpo="npm ls | grep repo"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# source ~/.nvm/nvm.sh


## GIT HACKS BY STEVE
# Checks out a PR to a pr/<number> local branch
# Usage: git pr <number> [<upstream>]
git config --global alias.pr '!git fetch -fu ${2:-upstream} refs/pull/$1/head:pr/$1 && git checkout pr/$1 && :'

# Deletes pr/<number> branches
# Usage: git pr-clean
git config --global alias.pr-clean '!git for-each-ref refs/heads/pr/* --format='"'"'%(refname)'"'"' | while read ref ; do branch=${ref#refs/heads/} ; git branch -D $branch ; done'

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig

# autojump (j)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


# bind ctrl + left/right to navigate words in terminal
# http://superuser.com/questions/357355/how-can-i-get-controlleft-arrow-to-go-back-one-word-in-iterm2
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word
