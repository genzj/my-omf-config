set -gx EDITOR vim
set -g fish_color_autosuggestion yellow\x1ebrblack
set -g fish_color_cancel \x2dr
set -g fish_color_command \x2d\x2dbold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow\x1e\x2d\x2dbold
set -g fish_color_history_current \x2d\x2dbold
set -g fish_color_host normal
set -g fish_color_match \x2d\x2dbackground\x3dbrblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow\x1e\x2d\x2dbackground\x3dbrblack
set -g fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -g fish_color_status red
set -g fish_color_user brgreen
set -g fish_color_valid_path \x2d\x2dunderline
set -g fish_pager_color_completion \x1d
set -g fish_pager_color_description B3A06D\x1eyellow
set -g fish_pager_color_prefix white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -g fish_pager_color_progress brwhite\x1e\x2d\x2dbackground\x3dcyan

set -g fish_key_bindings fish_default_key_bindings
set -g fish_user_abbreviations ll\x20ls\x20\x2dl\x1ep\x20proxychains\x1es\x20sudo\x1esp\x20sudo\x20proxychains

set -g fish_function_path (pushd (dirname (status --current-filename))/..; and pwd; popd)/functions $fish_function_path

set -gx GOROOT /usr/local/go
set -gx GOPATH $HOME/Projects/go

add_path_if_exists /usr/local/cuda-9.0/bin $HOME/.cargo/bin ~/.local/bin ~/bin $GOPATH/bin $GOROOT/bin ~/.yarn/bin ~/bin/python-apps/bin /snap/bin
set -gx WORKON_HOME $HOME/.virtualenvs
set -gx PROJECT_HOME $HOME/Projects
set -gx UCANACCESS_HOME $HOME/bin/UCanAccess-4.0.2-bin

test -d /usr/local/cuda/ ; and set -gx LD_LIBRARY_PATH "$LD_LIBRARY_PATH:/usr/local/cuda/lib64/:/usr/local/cuda/extras/CUPTI/lib64"

ulimit -S -c unlimited

