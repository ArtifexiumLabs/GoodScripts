#================================================
#       CD Into This Directory
#================================================
cd ~/.scripts

#================================================
#       Begin Default Scripts
#================================================
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '

alias profile='vim ~/.profile'
alias profiles='source ~/.profile'
alias acp='./git-add-commit-push.sh'
alias gs='git status'
alias gc='if [[ -z $1 ]]; then git commit; else git commit -m "$1"; fi'
alias gp='git pull'


#================================================
#       Import Custom Configuration
#================================================
config=`hostname`

# Starting directory
mkdir -p ~/projects
cd ~/projects

source ./$config/alias.sh
