# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="dogenpunk"
ZSH_THEME="moju"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(grails fabric pip golang git git-flow debian rvm vi-mode fasd command-not-found github vagrant)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/bin:/usr/bin:/usr/local/bin:/usr/local/packer:/opt/jetbrains/idea-IU-129.713/bin
export GOPATH=/home/matthew/github/mitchellh/packer
export JAVA_HOME=/usr/lib/jvm/java-7-oracle

bindkey -M viins '¬' run-help

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/matthew/.gvm/bin/gvm-init.sh" ]] && source "/home/matthew/.gvm/bin/gvm-init.sh"
