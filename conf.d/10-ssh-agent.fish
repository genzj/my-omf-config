set -g SSH_ENV $HOME/.ssh/environment

function create_agent
    ssh-agent > $SSH_ENV
    sed -i -e 's/^\([^=]\+\)=\([^;]\+\).*$/set -gx \1 \2/' $SSH_ENV
    chmod 600 $SSH_ENV
    source $SSH_ENV
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
        # Source SSH settings, if applicable
        source $SSH_ENV >/dev/null ^&1
        ps -ef | grep $SSH_AGENT_PID | grep 'ssh-agent\(\.exe\)\?$' > /dev/null ;
            or create_agent
    else
        create_agent
    end
end

start_agent

