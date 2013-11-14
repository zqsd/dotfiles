
#source ~/.bash/liquidprompt/liquidprompt

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'

COLOR_BOLD="\[\033[1m\]"
COLOR_RED="\[\033[31m\]"
COLOR_GREEN="\[\033[32m\]"
COLOR_YELLOW="\[\033[33m\]"
COLOR_BLUE="\[\033[34m\]"
COLOR_RESET="\[\033[0m\]"


PS1=""
env|grep -e "^SSH_CLIENT=" > /dev/null
if [ $? -eq 0 ]
then
    PS1="$COLOR_RESET$COLOR_BOLD@$COLOR_GREEN$(hostname)"
fi

if [ $(whoami) = "root" ]
then
    PS1="$COLOR_BOLD$COLOR_RED\u$PS1"
    PS1="$COLOR_BOLD$COLOR_BLUE[$PS1$COLOR_BLUE]"
fi
PS1="$PS1$COLOR_BOLD$COLOR_YELLOW\$$COLOR_RESET "

export PATH="/home/wiz/.gem/ruby/2.0.0/bin:$PATH"
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
