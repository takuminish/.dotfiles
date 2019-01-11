autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' formats "%F{green}%c%u \ue0a0[%b-branch]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

# 表示する顔文字を設定(Aqours)
FACE=("从/*^ヮ^§从 < きせきだよ〜"
      "ﾒｲ*,> _ <,ﾘ < はずかしいよぉ///"
      "∫∫( c||^ヮ^|| ハグしよ?"
      "|c||^.- ^|| < かわいいでちゅね〜"
      "(*> ᴗ •*)ゞ < ヨーソロー!"
      "¶cﾘ˘ヮ˚) <ヨハネよ!"
      "ﾉcﾉ,,･o･,,ﾉﾚ < みらいずらぁ〜"
      "ﾉξｿ>ω<ﾊ6 < シャイニー☆"
      "⌒°( ^ω^)°⌒ < がんばルビィ"
     )

FACE_COLOR=("03" "207" "156" "124" "19" "07" "214" "93" "05")
# カレントディレクトリと顔文字を表示

RANDOM="$(echo $(( $(od -vAn -N4 -tu4 < /dev/random))))"

PROMPT='$(left-prompt-top)
$(left-prompt-middle)
$(left-prompt-bottom ${RANDOM})'

ipcolor="magenta"
usernamecolor="green"
currentpathcolor="cyan"
gitbranchcolor="black"
shellcolor="white"
rubycolor="red"
gcccolor="blue"

function left-prompt-top() {
  echo "$(ip-view)%K{${usernamecolor}}%F{${ipcolor}}\ue0b0%f$(username-view)%k%F{${usernamecolor}}%K{${currentpathcolor}}\ue0b0%f $(current-path-view)%F{${currentpathcolor}}%K{${gitbranchcolor}}\ue0b0%f$(git-branch-view)%k%F{${gitbranchcolor}}\ue0b0%f"
}

function left-prompt-middle() {
  echo "$(shell-view)%F{${shellcolor}}%K{${rubycolor}}\ue0b0%f$(ruby-version-view)%k%F{${rubycolor}}%K{${gcccolor}}\ue0b0%f$(gcc-version-view)%k%F{${gcccolor}}\ue0b0%f"
}

function left-prompt-bottom() {
  echo "%(?.%B%F{green}.%B%F{blue})%(?!$FACE[$1 % ${#FACE[@]} + 1] !|c||^.- ^|| < ぶっぶーですわ )%f%b"
}

function ip-view() {
    echo "%K{${ipcolor}}%F{white}$(ifconfig | grep -w "inet" | grep -v "127.0.0.1" | cut -f 2 -d ' ')%f%k"
}

function username-view() {
  echo "%K{${usernamecolor}}%F{black}  [%n] %f%k"
}

function current-path-view() {
  echo "%K{${currentpathcolor}}%F{black}%d%f%k"
}

function git-branch-view {
    if [[ -z ${vcs_info_msg_0_} ]]; then
	echo '%F{white} \ue0a0 [no-branch]%f'
    else
        echo " ${vcs_info_msg_0_}"
    fi
}

function shell-view() {
  echo "%K{${shellcolor}}%F{black}$(echo $SHELL | cut -f 5 -d /)%f%k"
}

function ruby-version-view() {
  echo "%K{${rubycolor}}%F{black}  Ruby $(rbenv version | cut -f 1 -d ' ')%f%k"
}

function gcc-version-view() {
  echo "%K{${gcccolor}}%F{white}  gcc $(gcc -dumpversion)%f%k"
}

# エンターキー押すたびに顔文字を変化
alls() {
  zle accept-line
  if [[ -z "$BUFFER" ]]; then
      echo ""
      RANDOM="$(echo $(( $(od -vAn -N4 -tu4 < /dev/random) )))"
      PROMPT='$(left-prompt-top)
$(left-prompt-middle)
$(left-prompt-bottom ${RANDOM})'
 #     PROMPT='$(left-prompt-top)
#$(left-prompt-middle)
#%(?.%B%F{green}.%B%F{blue})%(?!$FACE[$RANDOM % ${#FACE[@]} + 1] !|c||^.- ^|| < ぶっぶーですわ )%f%b'
  fi
}

precmd () { vcs_info }





