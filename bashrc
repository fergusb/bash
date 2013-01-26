# .bashrc - bash config file
# From: Fergus Bremner
# Email: <fergus.bremner@gmail.com>
# Last Modified: 2013-01-26 05:14:39 EST

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

# Set prompt
PS1='\[\e[0;34m\]\
[\u@\h:\w]\
\[\e[m\]\
\n ' 
case `id -u` in
      0) PS1="${PS1}# ";; # root
      *) PS1="${PS1}> ";; # the rest
esac

#OPTIONS
set -o notify
set -o noclobber		# stop overwrite

#fortune

# Local Variables:
# mode:shell-script
# sh-shell:bash
# End:
