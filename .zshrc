# 1. 开启 Powerlevel10k 即时提示 (Instant Prompt)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 2. 环境变量
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="$PATH:/mnt/f/codeTools/SublimeText"
export MAVEN_OPTS="-Dhttps.proxyHost=127.0.0.1 -Dhttps.proxyPort=7890 -Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=7890"
#Home-Brew的环境变量
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
#ssh keychain
eval "$(keychain --eval --quiet id_ed25519git)"
# 3. Oh My Zsh 路径与主题配置
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# 4. 插件配置（已加入 zsh-autosuggestions 灰色命令补全）
plugins=(
  git
  tmux
  z
  extract
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# 5. 加载 Oh My Zsh
source $ZSH/oh-my-zsh.sh

# 6. 加载 Powerlevel10k 配置文件
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
setopt HIST_IGNORE_SPACE
