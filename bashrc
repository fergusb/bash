# .bashrc - bash config file
# From: Fergus Bremner
# Email: <fergus.bremner@gmail.com>
# Last Modified: 2013-01-26 02:38:10 CET

# if not running interactively, don't do anything
[ -z "$PS1" ] && return

# stop unwanted ssh/scp warnings
if [ $(expr index "$-" i) -eq 0 ]; then
  return
fi

# If xterm, set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
  PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
  ;;
*)
  ;;
esac

# set prompt
PS1='\[\e[0;34m\]\
[\u@\h:\w]\
\[\e[m\]\
\n \#' 
case `id -u` in
      0) PS1="${PS1}# ";; # root
      *) PS1="${PS1}> ";; # mortals
esac

#OPTIONS
set -o notify
set -o noclobber  # stop overwrite

# FUNCTIONS - kept in .bash/functions
if [ -f "$HOME/.bash/functions" ]; then
    . "$HOME/.bash/functions"
fi

# ALIASES - kept in .bash/aliases
if [ -f "$HOME/.bash/aliases" ]; then
    . "$HOME/.bash/aliases"
fi

#fortune

# vim:ft=sh
