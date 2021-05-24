autoload -Uz compinit
compinit

PS1='%~ %# '
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

GPG_TTY=$(tty)
export GPG_TTY

alias vim='nvim'
