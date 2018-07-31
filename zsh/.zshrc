export ZSH=/home/onoderat/.oh-my-zsh

ZSH_THEME="cloud" #other good options are avit, pure

source "${HOME}/.zgen/zgen.zsh"

# zgen reset # Run this everytime a new plugin is added or removed!
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
    zgen loadall <<EOPLUGINS
        zsh-users/zsh-history-substring-search
        /path/to/local/plugin
EOPLUGINS
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-syntax-highlighting
    zgen save
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh #For fzf
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#### Bindkeys for shortcut
bindkey '^f' forward-word #This makes ctrl and space accept the grayed out suggestion.
bindkey '^[[[CE' autosuggest-execute

#### Environment variables ####
EDITOR=vim

#### Aliases ####
alias rm='safe-rm'
