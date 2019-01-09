# 表示する顔文字を設定(Aqours)
FACE=("从/*^ヮ^§从 < きせきだよ〜"  "ﾒｲ*,> _ <,ﾘ < はずかしいよぉ///" "∫∫( c||^ヮ^|| < ハグしよ?" "|c||^.- ^|| < かわいいでちゅね〜" "(*> ᴗ •*)ゞ < ヨーソロー!" "¶cﾘ˘ヮ˚) < だて〜〜〜ん" "ﾉcﾉ,,･o･,,ﾉﾚ < みらいずらぁ〜" "ﾉξｿ>ω<ﾊ6 < シャイニー☆" "⌒°( ^ω^)°⌒ < がんばルビィ")

FACE_COLOR=("03" "207" "156" "124" "19" "07" "214" "93" "05")
# カレントディレクトリと顔文字を表示

PROMPT='$(left-prompt)
%(?.%B%F{green}.%B%F{blue})%(?!$FACE[$RANDOM % ${#FACE[@]} + 1] !|c||^.- ^|| < ぶっぶーですわ )%f%b'

function left-prompt() {
  echo "%K{green}%F{black}[%n] %f%k%F{green}%K{cyan}\ue0b0%f %F{black}%d %f%k%F{cyan}%K{black}\ue0b0%f $(git-prompt)%k%F{black}\ue0b0%f"
}
 
# エンターキー押すたびに顔文字を変化
alls() {
  zle accept-line
  if [[ -z "$BUFFER" ]]; then
      echo ''
      PROMPT='$(left-prompt)
%(?.%B%F{green}.%B%F{blue})%(?!$FACE[$RANDOM % ${#FACE[@]} + 1] !|c||^.- ^|| < ぶっぶーですわ )%f%b'
  fi
}

# 右プロンプト
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' formats "%c%u\ue0a0[%b]%f%k"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

#RPROMPT='$(git-prompt)'

function git-prompt {
    if [[ -z ${vcs_info_msg_0_} ]]; then
	echo '%F{white}\ue0a0 [no-branch]%f'
    else
        echo ${vcs_info_msg_0_}
    fi
}

