# Set up the prompt

autoload -Uz vcs_info
zstyle ':vcs_info:git*' actionformats
zstyle ':vcs_info:git*' formats " (%F{red}%b%f)%F{red}%u%f%F{green}%c%f"
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr "-"  # string for %u
zstyle ':vcs_info:git:*' stagedstr "+"    # string for %c
precmd() {
    vcs_info
}

autoload -Uz promptinit
promptinit
setopt promptsubst
PROMPT='%F{red}%n%f@%F{red}%m%f:%F{blue}%?%f:%~${vcs_info_msg_0_}$ '

# Use vim keybindings
bindkey -v

# History
setopt histignorealldups sharehistory extendedhistory
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias gl="git pull"
alias gp="git push"
alias gs="git switch"
alias gsc="git switch -c"
alias gsm="git switch master"
alias gb="git branch"
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias grbi="git rebase --interactive"

gsf() {
  git switch $(git branch|fzf)
}

#alias fd="fdfind"
alias vim="nvim"

eval "$(op completion zsh)"; compdef _op op

ops() {
  eval $(op signin)
}

opg() {
  op item get $(op item list | grep -v ID | fzf | cut -d' ' -f 1)
}

opgr() {
  op item get $(op item list | grep -v ID | fzf | cut -d' ' -f 1) --format=json | jq '.fields[] |select(.id=="password").value' -r
}


eval "$(zoxide init zsh)"

tssh() {
  ssh $(tailscale status | grep linux | grep -v '-' | fzf | cut -d' ' -f 1)
}

eval "$(fzf --zsh)"
#eval "$(fnm env --use-on-cd)"
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/nomad nomad
export NOMAD_TOKEN=op://personal/Nomad/password

alias nomad="op run -- nomad"
alias consul-template="op run -- consul-template"

export PATH="${HOME}/.local/bin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"

alias k="kubectl"

complete -o nospace -C /opt/homebrew/bin/grr grr
eval "$(${HOME}/.local/bin/mise activate zsh)"

# SSH Agent stuff
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

export EDITOR=nvim
