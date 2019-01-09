###########################################
#
# zshrc設定
#
#############################################

# 色を使用できるようにする
autoload -Uz colors
colors

source ~/.zsh.d/alias.zsh
source ~/.zsh.d/option.zsh
source ~/.zsh.d/developenv.zsh
source ~/.zsh.d/leftprompt.zsh

echo "${fg[cyan]}    _                              _____ ${reset_color}"
echo "${fg[cyan]}   / \   __ _  ___  _   _ _ __ ___|  ___|__  _ __ _____   _____ _ __ ${reset_color}"
echo "${fg[cyan]}  / _ \ / _\` |/ _ \| | | | '__/ __| |_ / _ \| '__/ _ \ \ / / _ \ '__| ${reser_color}"
echo "${fg[cyan]} / ___ \ (_| | (_) | |_| | |  \__ \  _| (_) | | |  __/\ V /  __/ | ${reset_color}"
echo "${fg[cyan]}/_/   \_\__, |\___/ \__,_|_|  |___/_|  \___/|_|  \___| \_/ \___|_| ${reset_color}"
echo "${fg[cyan]}           |_| ${reset_color}"