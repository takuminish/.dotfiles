############################################
#
# zshrc設定　
#
#############################################

# 色を使用できるようにする
autoload -Uz colors
colors

# ヒストリ(履歴)の設定
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 補完機能を使用できるようにする
autoload -Uz compinit
compinit

# ディレクトリ名だけでcdする
setopt auto_cd

# エイリアス

alias la='ls -a'
alias ll='ls -l'
alias ..='cd ..'


# cdしたあと自動でlsする
function chpwd() { ls }

# 左側にカレントディレクトリを表示する
PROMPT="%{$fg_bold[cyan]%}%d$reset_color%}

#通常の時(*> ᴗ •*)ゞ < ヨーソロー !　コマンドミスった時|c||^.- ^|| <　ぶっぶーですわを表示
%(?.%B%F{green}.%B%F{blue})[%n]%(?!(*> ᴗ •*)ゞ < ヨーソロー !|c||^.- ^|| <　ぶっぶーですわ )%f%b"
RPROMPT=""
