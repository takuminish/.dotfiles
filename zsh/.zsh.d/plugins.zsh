source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions", defer:2  
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if [ -e "${HOME}/.zplug" ]; then
    if ! zplug check --verbose; then
        printf "Install? [y/N]: "
        if read -q; then
            echo; zplug install
        fi
    fi
else
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

# Then, source plugins and add commands to $PATH
zplug load
