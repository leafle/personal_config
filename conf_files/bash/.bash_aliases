alias topchrome='`ps -C chrome -o pid= | xargs printf ,%b | xargs printf "top -p 0%b"`'
alias tnetworking='tmux attach -t networking'

# git aliases
alias gs='git status'
alias gsb='~/bin/gsb.sh'
alias gb='git branch'
alias gg='git grep'
alias quoi='gb && echo "-" && glog && echo "-" && gs'

if [ -f ~/.bash_aliases.meraki ]; then
  . ~/.bash_aliases.meraki
fi
