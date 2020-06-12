if status --is-interactive
    if which lsd &>/dev/null
        abbr --add --global l 'lsd'
        abbr --add --global ls 'lsd'
        abbr --add --global ll 'lsd -lah'
    else
        abbr --add --global ll 'ls -lah'
    end
    if which microk8s.kubectl &>/dev/null
        abbr --add --global kubectl 'microk8s.kubectl'
    end

    if which proxychains &>/dev/null
        abbr --add --global p 'proxychains -q'
        abbr --add --global sp 'sudo proxychains -q'

        if which apt &>/dev/null
            if test -e ~/.useproxy
                abbr --add --global aptupd 'sudo proxychains -q apt update'
                abbr --add --global aptupg 'sudo proxychains -q apt upgrade'
                abbr --add --global aptupl 'sudo proxychains -q apt list --upgradable'
            else
                abbr --add --global aptupd 'sudo apt update'
                abbr --add --global aptupg 'sudo apt upgrade'
                abbr --add --global aptupl 'sudo apt list --upgradable'
            end
        end
    end

    abbr --add --global s 'sudo'

    if which http &>/dev/null
        abbr --add --global download 'http --download'
    end

    if which fdfind &>/dev/null
        abbr --add --global fd 'fdfind'
    end
end
