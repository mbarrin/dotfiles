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
setopt PROMPT_SUBST
PROMPT='%F{red}%n%f@%F{red}%m%f:%F{blue}%?%f:%~${vcs_info_msg_0_}$ '

setopt histignorealldups sharehistory

# Use vim keybindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
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

PATH=$PATH:~/go/bin:~/.local/share/gem/ruby/3.1.0/bin

alias gl="git pull"
alias gp="git push"
alias gs="git switch"
alias gsc="git switch -c"
alias gsm="git switch master"
alias gb="git branch"
alias gst="git status"
alias ga="git add"
alias gc="git commit"

alias fd="fdfind"

eval "$(op completion zsh)"; compdef _op op

ops() {
  eval $(op signin)
}

opg() {
  op item get $(op item list | fzf | cut -d' ' -f 1)
}

eval "$(zoxide init zsh)"

tssh() {
  ssh $(tailscale status | grep linux | grep -v '-' | fzf | cut -d' ' -f 1)
}
