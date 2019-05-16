# cuda 10.1 related
add_path_if_exists /usr/local/cuda-10.1/bin /usr/local/cuda-10.1/NsightCompute-2019.1

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

# Poetry dependency management for Python
add_path_if_exists $HOME/.poetry/bin

# local bin path
add_path_if_exists ~/.local/bin ~/bin

