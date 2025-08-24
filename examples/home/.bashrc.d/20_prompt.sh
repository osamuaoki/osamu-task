# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:
# ${parameter:-word}
#        Use Default Values.  If parameter is unset or null, the expansion
#        of word is substituted.  Otherwise, the  value  of  parameter  is
#        substituted.
# ${parameter:+word}
#        Use Alternate Value.  If parameter is null or unset,  nothing  is
#        substituted, otherwise the expansion of word is substituted.

# set variable identifying the chroot you work in (used in the prompt below)
if [ "${debian_chroot:-}" = "" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# force to use color prompt (in reverse)
if [ "$TERM" = "linux" ]; then
  # Linux virtual console: simple
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
elif [ "$UID" != "0" ]; then
  # GUI terminal: reverse with U+E0B0 (private area powerline font) with git branch prompt (opt.)
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(
    git branch --show-current >/dev/null 2>&1 && echo -n " (=$(git branch --show-current))"
    ) $(date +%H:%M:%S) ↵\n \[\033[01;32;48m\]\$\[\033[00m\] '
else
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33;48m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]  $(
    git branch --show-current >/dev/null 2>&1 && echo -n " (=$(git branch --show-current))"
    ) $(date +%H:%M:%S) \n\$\[\033[00m\] '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
  xterm* | rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
  *) ;;

esac
