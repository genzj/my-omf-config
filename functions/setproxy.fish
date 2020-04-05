function setproxy
    if test ! -f ~/.proxyrc
        echo '~/.proxyrc file not exist. create proxyrc file with commands like:'
        echo ''
        echo 'echo "export https_proxy=http://host:port" >> ~/.proxyrc'
        echo 'echo "export http_proxy=http://host:port" >> ~/.proxyrc'
        echo 'echo "export no_proxy=localhost" >> ~/.proxyrc'
        return 1
    end

    source ~/.proxyrc

    function unsetproxy
        set -e https_proxy
        set -e http_proxy
        set -e no_proxy
        functions -e unsetproxy
    end
end
