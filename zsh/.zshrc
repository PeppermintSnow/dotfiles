# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/snow/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Fetch tty number for use in the subsequent conditionals
if [[ "$(tty)" == "/dev/tty1" ]]; then
    exec river
fi

eval "$(starship init zsh)"
