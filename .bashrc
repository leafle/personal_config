# .bashrc

PATH=/usr/kerberos/bin:/usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin:/usr/local/forte4j/teamware/bin:/usr/lib/jre/bin:/home/bsmyth/bin:/net/filer/vol/vol1/engineering/tools/bin:/home/bsmyth/scripts

# User specific aliases and functions

alias topchrome='`ps -C chrome -o pid= | xargs printf ,%b | xargs printf "top -p 0%b"`'
alias sccsdiffsall='checked_out . | sort -r | xargs -n 1 tkdiff -b -r'
alias makeclientbuild='make build BUILDTYPE=debug GET=true'
alias makeclient='make test BUILDTYPE=debug GET=true'
alias makedebug='make BUILDTYPE=debug DEBUG=yes SSLDEBUG=yes release'
alias makerelease='make BUILDTYPE=release DEBUG=no release'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

