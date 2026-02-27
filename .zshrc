# p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# p10k theme
source ~/zsh_plugins/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Plugins
source ~/zsh_plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Colour for autocomplete 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# History 
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_space
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Default text editor 
export EDITOR="nvim"
export VISUAL="nvim"

# Aliases
alias ls="ls --color"

alias nv="nvim"

alias ga="git add"
alias gc="git commit -m"
alias gst="git status"

alias waybar-reload="pkill waybar && hyprctl dispatch exec waybar"

alias ff=fastfetch
