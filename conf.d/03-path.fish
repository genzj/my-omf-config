# cuda related
add_path_if_exists /opt/cuda/bin
# cuda 10.1 related
add_path_if_exists /usr/local/cuda-10.1/bin /usr/local/cuda-10.1/NsightCompute-2019.1

# Android platform tools (adb and fastboot)
add_path_if_exists /opt/android-sdk/platform-tools

# snap path
add_path_if_exists /snap/bin

# Rust Cargo package manager
add_path_if_exists $HOME/.cargo/bin

# Yarn package manager
add_path_if_exists ~/.yarn/bin

# Golang path
add_path_if_exists $GOPATH/bin $GOROOT/bin

# pyenv
add_path_if_exists $HOME/.pyenv/bin
if type -q pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

    # Load pyenv automatically
    pyenv init - | source
end

# Poetry dependency management for Python
add_path_if_exists $HOME/.poetry/bin

# local bin path
add_path_if_exists ~/.local/bin ~/bin

