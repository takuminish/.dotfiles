# rbenvのパス
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# openssl
export PATH=$PATH:"/opt/local/bin:/opt/local/sbin"
export LIBRARY_PATH=$LIBRARY_PATH:"/usr/local/opt/openssl/lib/"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
