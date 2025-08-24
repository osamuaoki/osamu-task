# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
  # shellcheck disable=1090
  . ~/.bash_aliases
fi

#=============================================================================
# source ~/.bashrc.d/* (Osamu's customization)
#=============================================================================

for f in $(ls -1 ~/.bashrc.d/*.sh); do
  if [ -r "$f" ]; then
    source "$f"
  else
    echo "E: unreadable $f" >&2
  fi
done

#=============================================================================
# vim:set sts=2 et ai si sw=2:
# End of configuration
#=============================================================================
