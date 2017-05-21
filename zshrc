# Path to your oh-my-zsh configuration.

PROFILE_STARTUP=true
if [[ "$PROFILE_STARTUP" == true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    PS4=$'%D{%M%S%.} %N:%i> '
    exec 3>&2 2>$HOME/tmp/startlog.$$
    setopt xtrace prompt_subst
fi

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

#plugins=(heroku fabric pip git git-extras debian rails rbenv vi-mode fasd vagrant gem bundler golang)
#plugins=(vi-mode fasd rbenv github)
plugins=(vi-mode)

export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin
source $ZSH/oh-my-zsh.sh
source /usr/local/bin/aws_zsh_completer.sh

bindkey -M viins '¬' run-help

# Because FUCK Spring.
export DISABLE_SPRING=true

# export NVM_DIR="/Users/matthew/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.rbenv/bin:$PATH"

# pilot stuff
export PATH=$HOME/.pilot/shims:$HOME/.pilot/bin:$PATH
#eval $(pilot env)
alias penv='eval $(pilot env)'
export INTERCOM_USER="matthew"
alias pei='pilot exec intercom'

alias be='bundle exec'

# git stuff
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gco='git checkout'
alias gcm='git checkout master'
alias gd='git diff'
alias gpr='git pull-request'
alias grbi='git rebase -i'
alias gst='git status'
alias gl='git pull'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'

export mongo26='/usr/local/Cellar/mongodb26/2.6.11'
export mongo30='/usr/local/Cellar/mongodb30/3.0.12'

export PATH="$HOME/.yarn/bin:$PATH"

if [[ "$PROFILE_STARTUP" == true ]]; then
    unsetopt xtrace
    exec 2>&3 3>&-
fi

if [ $commands[fasd] ]; then # check if fasd is installed
  fasd_cache="$HOME/.fasd-init-cache"
  if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init auto >| "$fasd_cache"
  fi
  source "$fasd_cache"
  unset fasd_cache
  alias v='f -e vim'
  alias o='a -e open'
fi
