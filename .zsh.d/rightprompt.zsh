# 右プロンプト
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}\ue0a0 "
zstyle ':vcs_info:git:*' unstagedstr "%F{red}\ue0a0 "
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

RPROMPT='$(right-prompt)'

function right-prompt {
  echo ${vcs_info_msg_0_}
}
