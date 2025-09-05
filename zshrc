ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search git ruby bundler rails)

export HOMEBREW_NO_ANALYTICS=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="/opt/homebrew/bin:$HOME/.asdf/shims:$HOME/.docker/bin:/usr/local/opt/node@20/bin:$PATH"

source "${ZSH}/oh-my-zsh.sh"

if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt append_history
setopt share_history

# Aliases
alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'

# Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
