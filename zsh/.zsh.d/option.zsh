
# ヒストリ(履歴)の設定
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 補完機能を使用できるようにする
autoload -Uz compinit
compinit

# ディレクトリ名だけでcdする
setopt auto_cd

# cdしたあと自動でlsする
function chpwd() { ls }


zle -N alls
bindkey "\C-m" alls

compinit

export LSCOLORS=ExFxCxDxBxEgedabagacad
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# 補完後、メニュー選択モードになり左右キーで移動が出来る
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' list-colors ${LSCOLORS}

# fzfの設定
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
