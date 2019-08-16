function notebook
    argparse -n "notebook" 'h/help' 'l/local' -- $argv ; or return
    set -q _flag_h ; and begin echo "notebook [-l/--local]" ; return ; end
    if set -q _flag_l
        set ip 127.0.0.1
    else
        set ip 0.0.0.0
    end
    jupyter notebook --no-browser --ip $ip
end
