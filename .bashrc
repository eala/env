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

###### auto formatter ###########
# astyle setting
# ref: http://astyle.sourceforge.net/astyle.html
#alias astyle='astyle -A1 -C -S -K -Y -f -p -U -o -n'
# options:
# --style=allman / --style=bsd / --style=break / -A1    // { at new line
# --indent=spaces=4 / -s4
# --indent-col1-comments / -Y   // indent comments
# --pad-oper / -p               // a=4 to a = 4
# --pad-header / -H             // if(i = 4) to if (i = 4)
# --delete-empty-lines / -xe
# --align-pointer=name   / -k3  // char* a; int *b; to char *a; int *b;
# --align-reference=name   / -W3
# --attach-return-type      / -xf // void     foo(); to void foo();
# --attach-return-type-decl / -xh
# --max-code-length=#   / -xC#   // ref: https://google.github.io/styleguide/cppguide.html#Line_Length
# --mode=c                      // only formatted on C/C++ files
# --suffix=none / -n            // do not copy additional .orig file
# --verbose / -v
# --lineend=linux   / -z2
# --indent-switches / -S
# --break-blocks / -f           // add empty line before/after if/for/while blocks
#
# eala
# alias astyle='astyle -A1 -s4 -Y -p -H -xe -k3 -W3 -xf -xh -xC80 -n -z2 --mode=c -S -f'
# MStar in windows
alias astyle='astyle -A1 -s4 -Y -p -H -k3 -W3 -n -z2 --mode=c -f'
