ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search git ruby bundler rails )

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

# Set editor for tmuxinator
export EDITOR="vim"

# Store your own aliases in the ~/.aliases file and load them here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ASDF_DATA_DIR="/your/custom/data/dir"

export PATH=$HOME/.docker/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/usr/local/opt/node@20/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

