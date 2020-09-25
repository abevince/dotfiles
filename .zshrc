pfetch
set r rate 265 60
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
# Enable colors and change prompt:
autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install

#Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
# Suggest aliases for commands
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
# Auto suggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Search repos for programs that can't be found
source /usr/share/doc/pkgfile/command-not-found.zsh 2>/dev/null

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
# Mounting drive using udiskctl
alias mou="udisksctl mount -b "
alias moub="udisksctl mount -b /dev/sdb1"

# # Configs
alias sxhkdrc="nvim ~/.config/sxhkd/sxhkdrc"
alias bspwmrc="nvim ~/.config/bspwm/bspwmrc"
alias zshrc="nvim ~/.zshrc"
#
alias v="nvim"

alias pia="sh ~/repos/pia/pia-linux-2.4-05574.run"

SPACESHIP_CHAR_SYMBOL=❯
# SPACESHIP_CHAR_SYMBOL=🚀
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false



# Spaceship
autoload -U promptinit; promptinit
prompt spaceship

source /home/vince/.config/broot/launcher/bash/br
