export ZSH="$HOME/.oh-my-zsh"
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
	grep "^alias" "$HOME/.zshrc" | cut -d " " -f2-
}

alias ..="cd .."
alias ag="ag --literal"
alias empty="find . -type d -empty"
alias g="git"
alias get="sudo pacman -S"
alias kc="kill -9 $(pgrep compton)"
alias la="ls -gohA --color=auto --group-directories-first"
alias ll="ls -goh --color=auto --group-directories-first --ignore='*jagex*' --ignore='random.dat'"
alias remove="sudo pacman -Rns"
alias update="sudo pacman -Syu"
alias v="vim"

PATH="$PATH:$HOME/bin"
