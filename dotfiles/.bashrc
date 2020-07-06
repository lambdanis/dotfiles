# If not running interactively, do nothing
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bash_envvars ]] && . ~/.bash_envvars

PS1='\[\e[0;32m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
alias ls='ls --color=auto'
#export GREP_OPTIONS='--color=auto'

#export PATH=$PATH:~/anaconda3/bin
#export PATH=$PATH:~/go/bin
#export PATH=$PATH:~/.cargo/bin

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

