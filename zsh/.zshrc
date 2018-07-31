source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh
    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/vi-mode
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/z
    zgen load andrewferrier/fzf-z
    zgen load denysdovhan/spaceship-prompt spaceship
    zgen load zsh-users/zsh-syntax-highlighting

    # bulk load
    zgen loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
        /path/to/local/plugin
EOPLUGINS
    # completions
    zgen load zsh-users/zsh-completions src

    # save all to init script
    zgen save
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh #For fzf 
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#### Bindkeys for shortcut
bindkey '^f' forward-word #This makes ctrl and space accept the grayed out suggestion.
bindkey '^[[[CE' autosuggest-execute

#### Environment variables ####
EDITOR=vim
