#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lAh --group-directories-first'
alias lt='ls -lAhtr' # sort by date, most recent last
alias lz='ls -lAhSr --group-directories-first' # sort by size, largest last
#PS1='[\u@\h \W]$ '
#PS1='\n\u at \h in \w\n$ '
. ~/.git-prompt.sh

nonzero_return() {
	local ret=$?
	(( ret )) && echo " $ret"
}

uclr="\[\e[32m\]"
(( EUID )) || uclr="\[\e[31m\]"

PROMPT_COMMAND='__git_ps1 "\n\A\[\e[31m\]\`nonzero_return\` ${uclr}\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]" "\\n\\\$ "'

#export PS1="\n\A\[\e[31m\]\`nonzero_return\` ${uclr}\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\n\$ "
