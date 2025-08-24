# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:

# This enable programmable completion features
#
# You don't need to enable this, if it's already enabled in
# /etc/bash.bashrc or /etc/profile which sources /etc/bash.bashrc.
#
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
