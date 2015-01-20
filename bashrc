#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

OS=`uname -s`

# add home-local bin dir to PATH if dir exists
[[ -d ~/bin ]] && export PATH=~/bin:$PATH

if [[ $OS == "Linux" ]]; then
    # set up Linux specifics
    alias ls='ls --color=auto'
elif [[ $OS == "Darwin" ]]; then
    # set up OS X specifics
    alias ls='ls -G'
fi

PS1='[\u@\h \W]\$ '

set -o vi

export EDITOR=vim

if type virtualenvwrapper.sh &> /dev/null; then
    # set up virtualenvwrapper if installed
    export WORKON_HOME=~/devel/python_virtualenvs
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
    source `which virtualenvwrapper.sh`
fi 

if [[ -e ~/.bash_overrides ]]; then
    source ~/.bash_overrides
fi

# if doge MOTD exists; print it
type doge &> /dev/null && doge
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
