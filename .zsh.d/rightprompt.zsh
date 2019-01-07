# 右プロンプト
RPROMPT='`right-prompt`'

function right-prompt {
  autoload -Uz vcs_info
  setopt prompt_subst
  zstyle ':vcs_info:git:*' check-for-changes true
  zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
  zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
  zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
  zstyle ':vcs_info:*' actionformats '[%b|%a]'
  precmd () { vcs_info }
  echo '\ue0b0 ${vcs_info_msg_0_}'
}
