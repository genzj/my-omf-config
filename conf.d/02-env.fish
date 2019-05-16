set -gx EDITOR vim
set -g fish_color_autosuggestion yellow brblack
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow --background=brblack
set -g fish_color_selection white --bold --background=brblack
set -g fish_color_status red
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
set -g fish_pager_color_completion \x1d
set -g fish_pager_color_description B3A06D yellow
set -g fish_pager_color_prefix white --bold --underline
set -g fish_pager_color_progress brwhite --background=cyan

set -g fish_key_bindings fish_default_key_bindings

set -g fish_function_path (pushd (dirname (status --current-filename))/..; and pwd; popd)/functions $fish_function_path

set -gx GOROOT /snap/go/current
set -gx GOPATH $HOME/Projects/go

set -gx WORKON_HOME $HOME/.virtualenvs
set -gx PROJECT_HOME $HOME/Projects
set -gx UCANACCESS_HOME $HOME/bin/UCanAccess-4.0.2-bin

test -d /usr/local/cuda/ ; and set -gx LD_LIBRARY_PATH "$LD_LIBRARY_PATH:/usr/local/cuda/lib64/:/usr/local/cuda/extras/CUPTI/lib64"

ulimit -S -c unlimited

