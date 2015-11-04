#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

OS=`uname -s`

PS1='[\u@\h \W]\$ '

set -o vi

export EDITOR=vim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
