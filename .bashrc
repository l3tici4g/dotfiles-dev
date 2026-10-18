# ██████   █████  ███████ ██   ██ ██████   ██████ 
# ██   ██ ██   ██ ██      ██   ██ ██   ██ ██      
# ██████  ███████ ███████ ███████ ██████  ██      
# ██   ██ ██   ██      ██ ██   ██ ██   ██ ██      
# ██████  ██   ██ ███████ ██   ██ ██   ██  ██████ 
                                                

#: | A welcome menssage!
fastfetch

#: | PATHS

#: 'bash' config directory
# BDOTDIR=$HOME/.config/bash

#: 'dotfiles' directory path
DOTFILES=$HOME/dotfiles

#: 'media' directory path
MEDIA_DIR=$HOME/media

#: 'projects' directory path (for programming)
PROGRAMMING=$HOME/projects

#: Shell Scripts path
SHELLSCRPT=$HOME/.shell

#: | PROMPT
. $SHELLSCRPT/.inputrc

#: | BASE CONFIG

#: Default editor
export EDITOR=vim
export VISUAL=vim

#: History
HISTCONTROL=ignoreboth
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=$HOME/.bash_history

#: Append to the history file, don't overwrite it
shopt -s histappend

#: Environment Variables
# . "${BDOTDIR}/.bashenv"

#: Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

#: Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#: Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#: User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#: Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#: User specific aliases and functions
#if [ -d ~/.bashrc.d ]; then
#    for rc in ~/.bashrc.d/*; do
#        if [ -f "$rc" ]; then
#            . "$rc"
#        fi
#    done
#fi
#unset rc

#: | ALIESES
if [ -f $SHELLSCRPT/.aliases ]; then
    . $SHELLSCRPT/.aliases
fi

#: | PLUGINS
if [ -f $SHELLSCRPT/.plugins ]; then
    . $SHELLSCRPT/.plugins
fi

