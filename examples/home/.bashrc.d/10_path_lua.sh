# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:

# Luarocks bin path
if [ -d ${HOME}/.luarocks/bin ]; then
  export PATH="${HOME}/.luarocks/bin${PATH:+:${PATH}}"
fi
