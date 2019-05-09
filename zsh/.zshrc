export ZSH="/home/naz/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export TERM=xterm-color
export BROWSER=chromium
export LANG=en_US.UTF-8
export EDITOR="vim"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

cmd () {
	grep "^alias" ~/.zshrc | cut -d " " -f2-
}

alias ..="cd .."
alias ag="ag --literal"
alias empty="find . -type d -empty"
alias g="git"
alias get="sudo pacman -S"
alias la="ls -gohA --color=auto --group-directories-first"
alias ll="ls -goh --color=auto --group-directories-first"
alias owl="~/scripts/owl.sh"
alias primary="~/scripts/primary_monitor.sh"
alias remove="sudo pacman -Rns"
alias screencast="~/scripts/screencast.sh"
alias ss="~/scripts/audio_output.sh"
alias update="sudo pacman -Syu"
alias v="vim"
