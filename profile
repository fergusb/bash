# .bash_profile - bash config file
# From: Fergus Bremner
# Email: <fergus.bremner@gmail.com>
# Last Modified: 2013-01-26 05:36:53 EST

# Source bashrc
if [ -f ~/.bash/bashrc ]; then
	. ~/.bash/bashrc
fi

# ALIASES - kept in .bash/aliases
if [ -f ~/.bash/aliases ]; then
    . ~/.bash/aliases
fi

# FUNCTIONS - kept in .bash/functions
if [ -f ~/.bash/functions ]; then
    . ~/.bash/functions
fi

# enable bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# set PATH so it includes user bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

# PATHS
PATH=$PATH
export PATH
#BASH_ENV=$HOME/.bashrc
#export BASH_ENV PATH
#export ANDROID_SDK=/home/fergus/Projects/android/android-sdk/tools
#export ANT_HOME=/usr/share/ant
#export JAVA_HOME=/usr/share/java
#export JDK_HOME=/usr/lib/jvm/java-6-sun
#export JRE_HOME=/usr/lib/jvm/java-6-sun
#export MAVEN_OPTS=-Xms256m -Xmx512m
#export M2_HOME=/usr/share/maven2
#export M2=$M2_HOME/bin
export TERM=xterm-256color
export EDITOR=vim
export LC_CTYPE=en_US.UTF-8
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export TERM=xterm-256color
export COLORFGBG="default;default" # for mutt

# Enable options:
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s cmdhist
shopt -s extglob        # Necessary for programmable completion.
shopt -s histappend histreedit histverify
shopt -s no_empty_cmd_completion
shopt -s sourcepath

#fortune
mesg y
#users

# vim:ft=sh
