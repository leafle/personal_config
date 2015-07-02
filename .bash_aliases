alias topchrome='`ps -C chrome -o pid= | xargs printf ,%b | xargs printf "top -p 0%b"`'
alias tnetworking='tmux attach -t networking'

if [ -f ~/.bash_aliases.meraki ]; then
  . ~/.bash_aliases.meraki
fi
