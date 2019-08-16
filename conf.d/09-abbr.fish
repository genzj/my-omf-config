if status --is-interactive
    if which lsd >/dev/null
        abbr --add --global ls 'lsd'
        abbr --add --global ll 'lsd -lah'
    else
        abbr --add --global ll 'ls -lah'
    end
    abbr --add --global p 'proxychains'
    abbr --add --global s 'sudo'
    abbr --add --global sp 'sudo proxychains'

    abbr --add --global aptupd 'sudo proxychains apt update'
    abbr --add --global aptupg 'sudo proxychains apt upgrade'
    abbr --add --global aptupl 'sudo proxychains apt list --upgradable'

    abbr --add --global download 'http --download'
end
