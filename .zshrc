ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="bullet-train"

plugins=(brew)

source $ZSH/oh-my-zsh.sh

alias ll="ls -l"
alias lsa="ls -la"

alias subl="open -a 'sublime text'"

alias hosts="sudo vim /etc/hosts"
alias zsh="vim ~/.zshrc"

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$PATH:`yarn global bin`
