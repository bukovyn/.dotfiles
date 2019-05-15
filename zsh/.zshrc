export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh
export TERM=xterm-color
export BROWSER=chromium
export LANG=en_US.UTF-8
export EDITOR="vim"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

cmd () {
	grep "^alias" "$HOME/.zshrc" | cut -d " " -f2-
}

BASH_SCRIPTS="$HOME/scripts/bash"
SCREENSHOTS="$HOME/screenshots"

alias ..="cd .."
alias ag="ag --literal"
alias capture="scrot -sz $SCREENSHOTS/'$(date +%s)'.jpg"
alias empty="find . -type d -empty"
alias fkeys="$BASH_SCRIPTS/f_keys.sh"
alias g="git"
alias get="sudo pacman -S"
alias la="ls -gohA --color=auto --group-directories-first"
alias ll="ls -goh --color=auto --group-directories-first"
alias owl=". $BASH_SCRIPTS/owl.sh"
alias primary="$BASH_SCRIPTS/primary_monitor.sh"
alias remove="sudo pacman -Rns"
alias screencast="$BASH_SCRIPTS/screencast.sh"
alias ss="$BASH_SCRIPTS/audio_output.sh"
alias update="sudo pacman -Syu"
alias v="vim"
