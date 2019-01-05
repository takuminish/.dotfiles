###########################################
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
alias emacs='emacs -nw'

# cdしたあと自動でlsする
function chpwd() { ls }

# 表示する顔文字を設定(Aqours)
FACE=("从/*^ヮ^§从 < きせきだよ〜"  "ﾒｲ*,> _ <,ﾘ < はずかしいよぉ///" "∫∫( c||^ヮ^|| < ハグしよ?" "|c||^.- ^|| < かわいいでちゅね〜" "(*> ᴗ •*)ゞ < ヨーソロー!" "¶cﾘ˘ヮ˚) < だて〜〜〜ん" "ﾉcﾉ,,･o･,,ﾉﾚ < みらいずらぁ〜" "ﾉξｿ>ω<ﾊ6 < シャイニー☆" "⌒°( ^ω^)°⌒ < がんばルビィ")

# カレントディレクトリと顔文字を表示
PROMPT="%{$fg_bold[cyan]%}%d$reset_color%}
%(?.%B%F{green}.%B%F{blue})[%n] %(?!$FACE[$RANDOM % ${#FACE[@]} + 1] ! |c||^.- ^|| <　ぶっぶーですわ )%f%b"

RPROMPT=""

# エンターキー押すたびに顔文字を変化
alls() {
  zle accept-line
  if [[ -z "$BUFFER" ]]; then
      echo ''
      PROMPT="%{$fg_bold[cyan]%}%d$reset_color%}
%(?.%B%F{green}.%B%F{blue})[%n] %(?!$FACE[$RANDOM % ${#FACE[@]} + 1] ! |c||^.- ^|| <　ぶっぶーですわ )%f%b"
  fi
}
zle -N alls
bindkey "\C-m" alls
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
