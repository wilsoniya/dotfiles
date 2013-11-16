#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

export EDITOR=vim

export PATH=~/bin:$PATH

# if doge MOTD exists; print it
type doge &> /dev/null && doge
