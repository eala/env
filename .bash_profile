# More reference: dotfile in GitHub
####### machine detect #######
platform='unkonwn'
if [ "$(uname)" == "Darwin" ]; then
        platform='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        platform='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        platform='Windows'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
        platform='Windows64'
fi

####### alias #######

alias ls="ls -al"
# GNU od (Octal Dump) tool, with hex dump with string setting
if [[ $platform == 'Linux' ]]; then
    alias od="od -t x1z -A x"
elif [[ $platform == 'Mac' ]]; then
    alias god="god -t x1z -A x"
fi

alias astyle='astyle -A1 -s4 -Y -p -H -xe -k3 -W3 -xf -xh -xC80 -n -z2 --mode=c -S -f'

####### color #######

# ref: http://backup.noiseandheat.com/blog/2011/12/os-x-lion-terminal-colours/
# terminal
export CLICOLOR='true'
# ls
export LSCOLORS="Exfxcxdxbxegedabagacad"

# grep highlight
export GREP_OPTIONS='--color=auto'


####### editor #######
export VISUAL=vim
export EDITOR="$VISUAL"


###### shell prompt with git branch #######
# ref: https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
