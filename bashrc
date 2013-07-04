# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac


if [ -n $color_prompt ]; then
    if [ -f ~/.personal/colours.sh ]; then
       . ~/.personal/colours.sh
       PS1="\u@\H ${green_fg}\t${stop_fg} \w> "
    fi
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export HISTIGNORE="&:ls:[bf]g:exit"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=1000000
shopt -s cmdhist

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export PATH=$HOME/bin:/usr/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# Python wirtualenvs
if test -e `which virtualenvwrapper.sh`
then
    source `which virtualenvwrapper.sh`
fi

function cdd
{
    cd $1
    ls
}

alias rm='rm -i'

export EDITOR=vim
