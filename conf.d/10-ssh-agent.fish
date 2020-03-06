set -g SSH_ENV $HOME/.ssh/environment

function translate_script
    sed -e 's/^\([^=]\+\)=\([^;]\+\).*$/set -gx \1 \2/' $SSH_ENV > $SSH_ENV.fish
end

function create_agent
    ssh-agent > $SSH_ENV
    translate_script
    chmod 600 $SSH_ENV.fish
    source $SSH_ENV.fish
    add_keys
end

function add_keys
    set -l GIT_KEY_FILES ~/.ssh/*_bitbucket

    for f in $GIT_KEY_FILES
        if test -f $f ; and grep -q 'PRIVATE KEY' $f
            chmod 400 $f
            ssh-add $f
        end
    end
end


function start_agent
    if test -f $SSH_ENV
        translate_script
    end
    if test -f $SSH_ENV.fish
        # Source SSH settings, if applicable
        source $SSH_ENV.fish &>/dev/null
        ps -ef | grep $SSH_AGENT_PID | grep 'ssh-agent\(\.exe\)\?$' > /dev/null ;
            or create_agent
    else
        create_agent
    end
end

start_agent

