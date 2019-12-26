# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bash_envvars ]] && . ~/.bash_envvars

PS1='\[\e[0;32m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
alias ls='ls -a --color=auto'
#export GREP_OPTIONS='--color=auto'

#export PATH=~/anaconda3/bin:$PATH
#export PATH=~/.cargo/bin:$PATH

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

