
source ~/.bash/liquidprompt/liquidprompt

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='\[[\u@\h \W]\$\] '

export PATH="/home/wiz/.gem/ruby/2.0.0/bin:$PATH"
export PATH="/home/wiz/lib/adt-bundle-linux-x86_64-20130729/sdk/platform-tools:/home/wiz/lib/android-ndk-r9:$PATH"
alias dutop='du -s ./* | sort -nr'
complete -cf sudo # autocomplete on sudo
alias sudo='sudo ' # pass aliases to sudo
alias vim='vim -p '
alias tmux='tmux attach'
alias diskusage="du -hs * | sort -h"
alias mount_haxx="mkdir -p /tmp/haxx && sshfs haxx.es: /tmp/haxx"
alias mount_phoenix="mkdir -p /tmp/phoenix && sshfs phoenix:/cygdrive /tmp/phoenix"
