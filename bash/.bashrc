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
nonzero_return() {
	local ret=$?
	(( ret )) && echo " $ret"
}

export PS1="\n\A\[\e[31m\]\`nonzero_return\` \[\e[32m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\n\$ "
