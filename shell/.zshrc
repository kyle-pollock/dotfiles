source /usr/local/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen theme unixchad/shtr0m
antigen apply

GPG_TTY=$(tty)
export GPG_TTY

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY_TIME

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
