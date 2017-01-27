ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="robbyrussell"

plugins=(brew)

source $ZSH/oh-my-zsh.sh

alias dot="cd  ~/.dotfiles"

alias ll="ls -l"
alias lsa="ls -la"

alias subl="open -a 'sublime text'"

alias hosts="sudo vim /etc/hosts"
alias zsh="vim ~/.zshrc"
alias hyper="vim ~/.hyper.js"
alias refresh="source ~/.zshrc"

alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gdc="git diff --cached"

export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$PATH:$HOME/.rbenv/shims
export PATH=$PATH:`yarn global bin`

eval "$(rbenv init -)"
