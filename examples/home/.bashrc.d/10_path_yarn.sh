# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:

# set PATH so it includes yarn's (yarnpkg) private bin if it exists
if [ -d "$HOME/.yarn/bin" ]; then
  PATH="$HOME/.yarn/bin:$PATH"
fi
