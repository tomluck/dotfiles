# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# alias
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# less options
export LESS='-R -gj10 --no-init --quit-if-one-screen --RAW-CONTROL-CHARS'

# User specific aliases and functions
if [ -f .localrc ]; then
	source .localrc
fi

ulimit -c unlimited
FIGNORE=CVS:.svn

