test -f /usr/share/autojump/autojump.fish ; and source /usr/share/autojump/autojump.fish
eval (
    python3 -m virtualfish compat_aliases ^/dev/null ;
    or python -m virtualfish compat_aliases ^/dev/null ;
)

