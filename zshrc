# Path to your oh-my-zsh configuration.

PROFILE_STARTUP=false
if [[ "$PROFILE_STARTUP" == true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    PS4=$'%D{%M%S%.} %N:%i> '
    exec 3>&2 2>$HOME/tmp/startlog.$$
    setopt xtrace prompt_subst
fi

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="moju"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

plugins=(vi-mode rbenv)

export GOPATH=${HOME}/src/go
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh

export PATH=$HOME/bin:$PATH

bindkey -M viins '¬' run-help

# Because FUCK Spring.
export DISABLE_SPRING=true

export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/src/go/bin:$HOME/.rbenv/bin:$PATH"

# pilot stuff
export PATH=$HOME/.pilot/shims:$HOME/.pilot/bin:$PATH
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
alias gr='git rm'
alias grbi='git rebase -i'
alias gst='git status'
#alias gcd="cd `git rev-parse --show-toplevel`"
alias vim='nvim'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias gl='git pull origin $(current_branch)'
alias gp='git push origin $(current_branch)'

export PATH="$HOME/.yarn/bin:$PATH"

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

# Assume role stuff
function aws_account_info {
  [ "$AWS_ACCOUNT_NAME" ] && [ "$AWS_ACCOUNT_ROLE" ] && echo "$AWS_ACCOUNT_NAME:$AWS_ACCOUNT_ROLE"
}

export AWS_DEFAULT_REGION="us-east-1"
source $(which assume-role)
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [[ "$PROFILE_STARTUP" == true ]]; then
    unsetopt xtrace
    exec 2>&3 3>&-
fi
