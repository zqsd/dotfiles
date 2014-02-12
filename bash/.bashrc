
#source ~/.bash/liquidprompt/liquidprompt

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'


. ~/.git-completion.bash

export PROMPT_COMMAND=__prompt_command
function __prompt_command() {
    local EXIT="$?"
    PS1=""
    local RESET="\[\033[0m\]"
    local BOLD="\[\033[1m\]"
    local RED="\[\033[31m\]"
    local GREEN="\[\033[32m\]"
    local YELLOW="\[\033[33m\]"
    local BLUE="\[\033[34m\]"
    local PURPLE="\[\033[35m\]"
    local CYAN="\[\033[36m\]"
    local LIGHTGRAY="\[\033[37m\]"
    local BG_RED="\[\033[41m\]"
    local BG_GREEN="\[\033[42m\]"
    local BG_BROWN="\[\033[43m\]"
    local BG_BLUE="\[\033[44m\]"
    local BG_PURPLE="\[\033[45m\]"
    local BG_CYAN="\[\033[46m\]"
    local BG_LIGHTGRAY="\[\033[47m\]"

    git branch &>/dev/null
    IS_GIT=$?

    PS1+="$BOLD$BLUE["

    env|grep -e "^SSH_CLIENT=" > /dev/null
    if [ $? -eq 0 ]; then
        # ssh
        if [ ${UID} -eq 0 ]; then
            PS1+="$BOLD$RED\u" # root
        else
            PS1+="$BOLD$GREEN\u"
        fi
        PS1+="$RESET@$CYAN\h$RESET:"
    else
        # local
        if [ ${UID} -eq 0 ]; then
            PS1+="$BOLD$RED\u$RESET:" # root
        fi
    fi

    PS1+="$RESET$BOLD$LIGHTGRAY\w$BOLD$BLUE]"

    if [ $IS_GIT -eq 0 ]; then
        PS1+="$RESET($BOLD$YELLOW$(git branch | grep ^* | sed s/\*\ //)$RESET)"
    fi

    if [ $EXIT != 0 ]; then
        PS1+="$BOLD$RED☠$RESET " # last command result in error (💔, ☠, 💩)
    else
        PS1+="$BOLD$GREEN❤$RESET "
    fi
}

export EDITOR=vim
export PATH="/home/wiz/.gem/ruby/2.0.0/bin:/home/wiz/.gem/ruby/1.9.1/bin:$PATH"
export PATH="/home/wiz/lib/adt-bundle-linux-x86_64-20130729/sdk/platform-tools:/home/wiz/lib/android-ndk-r9:$PATH"
alias dutop='du -s ./* | sort -nr'
complete -cf sudo # autocomplete on sudo
alias ack="ack-grep "
alias sudo='sudo ' # pass aliases to sudo
alias vim='vim -p '
alias tmux='tmux attach'
alias diskusage="du -hs * | sort -h"
alias mount_haxx="mkdir -p /tmp/haxx && sshfs haxx.es: /tmp/haxx"
alias mount_phoenix="mkdir -p /tmp/phoenix && sshfs phoenix:/cygdrive /tmp/phoenix"
