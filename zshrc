unsetopt share_history

PROMPT='%n@%m %(?.%F{green}%*%f.%F{red}%*%f) %~> '

# Have up/down arrow search through history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

eval "$(pyenv init -)"

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
