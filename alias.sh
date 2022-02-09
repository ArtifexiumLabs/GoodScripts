#================================================
#       CD Into This Directory
#================================================
cd ~/.scripts

#================================================
#       Begin Default Scripts
#================================================
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '

alias profile='vim ~/.profile'
alias sourcep='source ~/.profile'
alias acp='./git_add_commit_push.sh'
alias gs='git status'
alias gc='if [[ -z $1 ]]; then git commit; else git commit -m "$1"; fi'
alias gp='git pull'
alias server='ssh -p 2222 adam@ssh.binarycontradiction.com'
alias serverl='ssh -p 2222 adam@192.168.1.74'
alias pi='ssh pi@192.168.1.127'


#================================================
#       Import Custom Configuration
#================================================
config=$(hostname)

source ./$config/alias.sh

#================================================
#       Default Directory to Start In
#================================================
cd - # back to same directory