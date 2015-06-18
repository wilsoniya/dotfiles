export EDITOR=vim
export OS=$(uname -s)

if [[ ! "256" == *256* ]]; then
    # case: not using a 256 color term; set a 256 color term
    export TERM=xterm-256color
fi


# ssh-agent connection, if available
if [[ -e "${XDG_RUNTIME_DIR}/ssh-agent.socket" ]]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi

# STDERR coloring, if available
#if [ -f "/usr/lib/libstderred.so" ]; then
#    export LD_PRELOAD="/usr/lib/libstderred.so"
#fi
unset LD_PRELOAD
