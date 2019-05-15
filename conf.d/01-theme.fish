function _replace_session_theme -a target_theme
    if test -f $OMF_CONFIG/theme
        read current_theme < $OMF_CONFIG/theme
        test "$target_theme" = "$current_theme"; and return 0
    end

    # Replace autoload paths of current theme with the target one
    set -q current_theme
        and autoload -e {$OMF_CONFIG,$OMF_PATH}/themes/$current_theme{,/functions}
    set -l theme_path {$OMF_CONFIG,$OMF_PATH}/themes*/$target_theme{,/functions}
    debug_print_variable "theme_path"
    set fish_function_path $theme_path $fish_function_path
    return 0
end


if echo $TERM | grep -q '^linux'
    # linux terminal (console) cannot display fancy fonts
    _replace_session_theme batman
else
    set -g theme_nerd_fonts yes
end

