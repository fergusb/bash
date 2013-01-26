# .bash_profile - bash config file
# From: Fergus Bremner
# Email: <fergus.bremner@gmail.com>
# Last Modified: 2013-01-26 06:48:23 EST

# set PATH so it includes user bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

# PATHS
PATH=$PATH
export PATH
#BASH_ENV=$HOME/.bashrc
#export BASH_ENV PATH
#export ANT_HOME=/usr/share/ant
#export JAVA_HOME=/usr/share/java
#export JDK_HOME=/usr/lib/jvm/java-6-sun
#export JRE_HOME=/usr/lib/jvm/java-6-sun
#export M2_HOME=/usr/share/maven2
#export M2=$M2_HOME/bin
#export MAVEN_OPTS=-Xms256m -Xmx512m
export COLORFGBG="default;default" # for mutt
export EDITOR=vim
export GREP_OPTIONS="--color=auto" # grep colorize 
export HISTCONTROL=ignoreboth
export HISTCONTROL=ignoredups
export HISTSIZE=10000
export LC_CTYPE=en_US.UTF-8
export PGHOST=/tmp # Postgres won't work without this
export TERM=xterm-256color

# OPTIONS
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s cmdhist
shopt -s extglob        # for programmable completion
shopt -s histappend histreedit histverify
shopt -s no_empty_cmd_completion
shopt -s sourcepath

# Source bashrc
if [ -f $HOME/.bash/bashrc ]; then
	. $HOME/.bash/bashrc
fi

# enable bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#fortune
mesg y
#users

# vim:ft=sh
