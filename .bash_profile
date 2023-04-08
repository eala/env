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
#alias ctags='ctags -R'
alias ctags='ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q'
# cscope, -b: break inter-active mode, -k: include kernel/function-based codes, -R: reduced version
#alias cscope='cscope -Rbqk'

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

# for MacPort
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH


# for using gnu-sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

##
# Your previous /Users/eala/.bash_profile file was backed up as /Users/eala/.bash_profile.macports-saved_2021-01-26_at_22:48:55
##

# MacPorts Installer addition on 2021-01-26_at_22:48:55: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# brew
export PATH="/usr/local/bin:$PATH"

# MacPorts Installer addition on 2021-01-26_at_22:48:55: adding an appropriate DISPLAY variable for use with MacPorts.
export DISPLAY=:0
# Finished adapting your DISPLAY environment variable for use with MacPorts.

#source /opt/intel/openvino_2021/bin/setupvars.sh

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_NDK=${ANDROID_HOME}/ndk/24.0.8215888
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:${ANDROID_NDK}

# for pyenv
#export PATH="$HOME/.pyenv/shims:$PATH"
export PATH="$PATH:$HOME/.pyenv/shims"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# for tmux colorschema
alias tmux="TERM=screen-256color-bce tmux"

