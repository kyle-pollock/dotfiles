PS1='%~ %# '
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE

GPG_TTY=$(tty)
export GPG_TTY

alias vim='nvim'
