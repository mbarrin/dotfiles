# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="moju"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

plugins=(heroku fabric pip git git-extras debian rails rbenv vi-mode fasd github vagrant gem bundler golang)

export GOPATH=$HOME/src/go
export PATH=~/bin:/usr/local/packer:$PATH:$GOPATH/bin:~/.npm
source $ZSH/oh-my-zsh.sh
source /usr/local/bin/aws_zsh_completer.sh

alias be='bundle exec'
bindkey -M viins '¬' run-help
JAVA_HOME=/usr/lib/jvm/jdk-7-oracle-x64
