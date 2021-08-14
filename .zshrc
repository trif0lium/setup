export ZSH="/Users/$(whoami)/.oh-my-zsh"
export TERM="xterm-256color"
ZSH_THEME="cypher"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias fs="cd ~/Workspace/fs"
alias me="cd ~/Workspace/monkeyeveryday"
alias se="cd ~/Workspace/fs/seniorproj"
alias k="kubectl"
alias dotfiles="cd ~/Workspace/.dot"
alias vim="nvim"
alias gd="git --no-pager diff"
alias gl="git --no-pager log"
alias wf="cd .github/workflows"
alias dcp="docker-compose"
alias please='sudo $(fc -ln -1)'
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
. /usr/local/opt/asdf/asdf.sh
source "/Users/$(whoami)/.functions"
BROWSER=none
