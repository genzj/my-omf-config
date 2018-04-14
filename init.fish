set -l addtional_complete $OMF_CONFIG/completions
contains $addtional_complete $fish_complete_path ; \
    or set -g fish_complete_path $addtional_complete $fish_complete_path

for x in $OMF_CONFIG/conf.d/*.fish
    source $x
end

