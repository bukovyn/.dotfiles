export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export TERM=xterm-color
export BROWSER=firefox
export LANG=en_US.UTF-8
export EDITOR="vim"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

cmd () {
	grep "^alias" "$HOME/.zshrc" | cut -d " " -f2-
}

(cat ~/.cache/wal/sequences &)

alias ..="cd .."
alias ag="ag --literal"
alias dev="ssh nazar@dev"
alias empty="find . -type d -empty"
alias g="git"
alias get="sudo pacman -S"
alias kc="kill -9 $(pgrep compton)"
alias la="ls -gohA --color=auto --group-directories-first"
alias ll="ls -goh --color=auto --group-directories-first --ignore='Downloads' --ignore='random.dat' --ignore='blob_storage'"
alias pdf="evince > /dev/null 2>&1"
alias pdfp="evince-previewer > /dev/null 2>&1"
alias remove="sudo pacman -Rns"
alias update="sudo pacman -Syu"
alias v="vim -i NONE"
alias vim="vim -i NONE"
alias zshrc="vim ~/.zshrc"

PATH="$PATH:$HOME/bin"
