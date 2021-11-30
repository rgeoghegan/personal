unsetopt share_history

PROMPT='%n@%m %(?.%F{green}%*%f.%F{red}%*%f) %~> '

# Have up/down arrow search through history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

eval "$(pyenv init -)"
