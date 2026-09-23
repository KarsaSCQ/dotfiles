# Setup fzf key bindings and fuzzy completion
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh
fi

# fzf 外观与默认参数自定义
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
