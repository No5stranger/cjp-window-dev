HOST_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')

PORT=7890

HTTP_PROXY="http://${HOST_IP}:${PORT}"

function set_proxy() {
        export http_proxy="$HTTP_PROXY"
        export https_proxy="$HTTP_PROXY"
}

function unset_proxy() {
        unset http_proxy
        unset https_proxy
}

alias sp='set_proxy'
alias up='unset_proxy'
