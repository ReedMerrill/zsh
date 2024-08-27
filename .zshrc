# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# make arguments to cd that aren't directories assumed to be a variable who's
# value is a directory. Useful for "aliasing" directories
setopt cdablevars
# turn on dir switching without cd
setopt autocd


# zsh-autocomplete
source "/usr/local/bin/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Add scripts dir to path
export PATH="/Users/reed/Scripts:$PATH"

################################################################################
# ALIASES & HASHES

# Lazygit
alias lg='lazygit'
# Make fd the standard command for fd (which has to be called fdfind due to conflicts)
alias fd='fdfind'
# listing (eza is an awesome ls replacement)
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
# [s]ource .zshrc
alias so='source ~/.zshrc'
# [g]it [s]tatus
alias gs='git status'
# make R not prompt to save workspace on exit
alias R='R --no-save'
# [n]uclear [r]e[m]ove
alias nrm='sudo rm -r'
# launch yazi
alias ff='yazi'
# clear
alias cl='clear'

# Directory Navigation

# fixing annoying mandatory [d]rop[b]ox folder name on linked account
alias db="cd /Users/reed/Can.\ Mun.\ Barometer\ Dropbox/Reed\ Merrill/"
# [p]rojects
alias p="cd /Users/reed/projects"
# [n]eovim [d]ot[f]iles
alias ndf='cd ~/dotfiles/nvim/.config/nvim/ && nvim .'

################################################################################
# INITIALIZATIONS

# fnm - node.js envs
#export PATH="/home/reed/.local/share/fnm:$PATH"
#eval "`fnm env`"

# autoenv
#source '/home/reed/.autoenv/activate.sh'
# enable auto env actions when leaving a dir
#AUTOENV_ENABLE_LEAVE='allow'

# make sure neovim can be found
export VISUAL='/usr/bin/nvim'
export EDITOR='/usr/bin/nvim'

# add my Scripts directory to PATH
# export PATH="/user/reed/Scripts:$PATH"
#
# image magick
# export PATH="$HOME/ImageMagick/bin:$PATH"
# export MAGICK_HOME="$HOME/ImageMagick"
# export LD_LIBRARY_PATH="$HOME/ImageMagick/lib"

# disable ctrl-l clearing the screen
bindkey -r "^L"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
