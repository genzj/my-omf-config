test -f /usr/share/autojump/autojump.fish ; and source /usr/share/autojump/autojump.fish
eval (
    python3 -m virtualfish compat_aliases ^/dev/null ;
    or python -m virtualfish compat_aliases ^/dev/null ;
)

# disable virtual env prompt, let fish prompt handle it
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

