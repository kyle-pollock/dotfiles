autoload -Uz compinit
compinit

HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

PS1='%~ %# '
