# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
 
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
 # Shell is non-interactive.  Be done now!
 return
fi

export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
# Put your fun stuff here
cd -
export LC_ALL="pt_BR.utf8"
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
[ -d ~/.man ] && { MANPATH=~/.man:"${MANPATH}"; }

function parse_git_branch {
   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
   echo "${ref#refs/heads/} "
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[01;32m\]"
 
export PS1="$YELLOW\$(parse_git_branch)$PS1"
