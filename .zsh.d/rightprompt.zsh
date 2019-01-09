# 右プロンプト
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' formats "%F{green}%c%u\ue0a0 [%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

RPROMPT='$(right-prompt)'

function right-prompt {
    if [[ -z ${vcs_info_msg_0_} ]]; then
	echo '%F{white}\ue0a0 [no-branch]%f'
    else
        echo ${vcs_info_msg_0_}
    fi
}
