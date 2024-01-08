# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Some nice options
stty stop undef # Disable ctrl-s freezing terminal.
zle_highlight=('paste:none') # Remove the awful paste highlight

# Remove annoying beep
unsetopt BEEP

# Tab completion
autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Aliases
alias v="nvim"

fpath=(plugins/zsh-completions/src plugins/mac-zsh-completions/completions $fpath)

# Starship prompt
eval "$(starship init zsh)"

# Autosuggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ssh-agent setup
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi
