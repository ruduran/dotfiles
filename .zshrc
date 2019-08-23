DISABLE_AUTO_UPDATE=true

export EDITOR=/usr/local/bin/vim
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source ~/.oh-my-zsh-plugins

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# User configuration
export DEFAULT_USER="duranrub"

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source ~/github/z/z.sh

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
