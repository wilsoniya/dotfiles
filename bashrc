#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

export EDITOR=vim
export WORKON_HOME=~/Devel/python_virtualenvs
source `which virtualenvwrapper.sh`

export PATH=~/bin:$PATH

# if doge MOTD exists; print it
type doge &> /dev/null && doge
