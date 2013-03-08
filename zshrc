# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dogenpunk"
#ZSH_THEME="random"

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
plugins=(git debian rvm vi-mode autojump command-not-found github)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/matthew/.local/share/Steam/debian_bin:/home/matthew/bin:/usr/local/rvm/gems/ruby-1.9.3-p194/bin:/usr/local/rvm/gems/ruby-1.9.3-p194@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p194/bin:/usr/local/rvm/bin:/home/matthew/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/home/matthew/Work/AWS/ec2tools/ec2-api-tools-1.6.6.1/bin:/home/matthew/Work/AWS/cftools/AWSCloudFormation-1.0.11/bin:/home/matthew/Work/AWS/iamtools/IAMCli-1.5.0/bin:/home/matthew/Work/AWS/asgtools/AutoScaling-1.0.61.1/bin:/home/matthew/.rvm/bin
