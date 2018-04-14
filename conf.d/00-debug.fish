
function debug_print_variable -S -a name
    set -q omf_conf_debug_on ; or return 0
    echo "$name = $$name"
    return 0
end

