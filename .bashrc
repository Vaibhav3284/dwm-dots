#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias install='sudo pacman -S '
PS1='[\u@\h \W]\$ '

if [[ $TERM == "xterm-kitty" ]]; then
  cowsay -f stegosaurus "moo"
else
  :
fi
