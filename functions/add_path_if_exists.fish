function add_path_if_exists
    set -l exists
    for path in $argv
        if test -d $path
            set exists $exists $path
        end
    end
    set -gx PATH $exists $PATH
end
