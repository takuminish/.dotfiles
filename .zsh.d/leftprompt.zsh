# 表示する顔文字を設定(Aqours)
FACE=("从/*^ヮ^§从 < きせきだよ〜"  "ﾒｲ*,> _ <,ﾘ < はずかしいよぉ///" "∫∫( c||^ヮ^|| < ハグしよ?" "|c||^.- ^|| < かわいいでちゅね〜" "(*> ᴗ •*)ゞ < ヨーソロー!" "¶cﾘ˘ヮ˚) < だて〜〜〜ん" "ﾉcﾉ,,･o･,,ﾉﾚ < みらいずらぁ〜" "ﾉξｿ>ω<ﾊ6 < シャイニー☆" "⌒°( ^ω^)°⌒ < がんばルビィ")

FACE_COLOR=("03" "207" "156" "124" "19" "07" "214" "93" "05")
# カレントディレクトリと顔文字を表示

PROMPT='$(left-prompt)
%(?.%B%F{green}.%B%F{blue})[%n] %(?!$FACE[$RANDOM % ${#FACE[@]} + 1] ! |c||^.- ^|| < ぶっぶーですわ )%f%b'

function left-prompt() {
  echo '%K{cyan}%d%k%F{cyan}\ue0b0%f'
}
 
# エンターキー押すたびに顔文字を変化
alls() {
  zle accept-line
  if [[ -z "$BUFFER" ]]; then
      echo ''
      PROMPT='$(left-prompt)
%(?.%B%F{green}.%B%F{blue})[%n] %(?!$FACE[$RANDOM % ${#FACE[@]} + 1] ! |c||^.- ^|| < ぶっぶーですわ )%f%b'
  fi
}



