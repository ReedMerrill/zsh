# make arguments to cd that aren't directories assumed to be a variable who's
# value is a directory. Useful for "aliasing" directories
setopt cdablevars
# turn on dir switching without cd
setopt autocd

# hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

# editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Add scripts dir to path
export PATH="/Users/reed/Scripts:$PATH"

################################################################################
# ALIASES & HASHES (MacOS only)

# source main aliases script
source ~/.aliases

# Lazygit
alias lg='lazygit'
# listing (eza is an awesome ls replacement)
alias l="eza -l --icons --git --all --modified"
# list with 2-level tree
alias lt="eza --tree --level=2 --all --long --icons --git --modified"
# [s]ource .zshrc
alias so='source ~/.zshrc'
# [g]it [s]tatus
alias gs='git status'
# make R not prompt to save workspace on exit
alias R='R --no-save'
# [n]uclear [r]e[m]ove
alias nrm='sudo rm -r'
# clear
alias cl='clear'

# Directory Navigation

# fixing annoying mandatory [d]rop[b]ox folder name on linked account
alias db="cd /Users/reed/Can.\ Mun.\ Barometer\ Dropbox/Reed\ Merrill/cmb_main/"
# [p]rojects
alias p="cd /Users/reed/projects"
# [n]eovim [d]ot[f]iles
alias ndf='cd ~/dotfiles/nvim/.config/nvim/ && nvim .'
# [d]ot[f]iles
alias df='cd ~/dotfiles/nvim/.config/nvim/ && nvim .'

################################################################################
# INITIALIZATIONS

# make sure neovim can be found
export VISUAL='/usr/bin/nvim'
export EDITOR='/usr/bin/nvim'

# disable ctrl-l clearing the screen
bindkey -r "^L"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
