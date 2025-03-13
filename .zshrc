# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/.local/bin:$PATH"

export EDITOR=/usr/bin/vim

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME=powerlevel10k/powerlevel10k

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source ~/.oh-my-zsh-plugins

DISABLE_AUTO_UPDATE=true
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/mine.omp.json)"

# User configuration
export DEFAULT_USER="ruben"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

upgrade_custom()
{
    echo "Upgrading custom plugins and themes"
    for d in $ZSH_CUSTOM/*/*; do
        [[ -d $d/.git ]] && echo "*" `basename $d` && ( cd $d && git pull )
    done
}

alias upgrade_z="echo \"Upgrading Z\" && ( cd ~/.repos/z && git pull )"
upgrade()
{
    upgrade_z
    pyenv update
    upgrade_custom
    omz update
    oh-my-posh upgrade
}

alias bat=batcat

