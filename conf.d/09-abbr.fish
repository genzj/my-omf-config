if status --is-interactive
    abbr --add --global ll 'ls -lah'
    abbr --add --global p 'proxychains'
    abbr --add --global s 'sudo'
    abbr --add --global sp 'sudo proxychains'
    abbr --add --global aptupd 'sudo proxychains apt update'
    abbr --add --global aptupg 'sudo proxychains apt upgrade'
    abbr --add --global aptupl 'sudo proxychains apt list --upgradable'
end
