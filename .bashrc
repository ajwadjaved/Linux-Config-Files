# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#set -o vi

alias xi='sudo xbps-install -S'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove -R'
alias xq='xbps-query -Rs'
alias p='python3'
alias v='vim'
alias vimrc='vim .config/nvim/init.vim'
alias ls='ls -hN --color=auto --group-directories-first'
