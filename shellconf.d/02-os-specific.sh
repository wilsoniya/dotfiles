if [[ $OS == "Linux" ]]; then
    if [[ -e /etc/issue ]]; then
        if [[ $(cat /etc/issue) == Arch\ Linux* ]]; then
            alias sc="systemctl"
        fi 
    fi 
fi

