####### color #######
# ref: http://backup.noiseandheat.com/blog/2011/12/os-x-lion-terminal-colours/
# terminal
export CLICOLOR='true'
# ls
export LSCOLORS="Exfxcxdxbxegedabagacad"
export LS_OPTS="--color=auto"

# grep highlight
export GREP_OPT='--color=auto'


####### editor #######
export VISUAL=vim
export EDITOR="$VISUAL"


####### alias #######
alias ls="ls ${LS_OPTS}"
alias ll="ls -al ${LS_OPTS}"

alias grep="grep ${GREP_OPT}"
unset GREP_OPTIONS
