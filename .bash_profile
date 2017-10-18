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
