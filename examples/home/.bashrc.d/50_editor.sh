# sourced at the end of ~/.bashrc
# vim:set sw=2 sts=2 ai si et:
# Use: shfmt -s -w
#=============================================================================
# Set nvim starting mode

# osamu's custom setting
if type /usr/bin/nvim > /dev/null; then
  NVIM_APPNAME=nvim_osamu
  #NVIM_APPNAME=nvim_lzosamu
  #NVIM_APPNAME=nvim_lazyvim
  #NVIM_APPNAME=nvim_astronvim
  export NVIM_APPNAME
  export EDITOR="/usr/bin/nvim"
  export VISUAL=$EDITOR
  alias v0="/usr/bin/nvim -u NORC"
  alias vi="/usr/bin/nvim"
  alias vimdiff='/usr/bin/nvim -d'
  alias view="/usr/bin/nvim -R -u NORC"
  alias ex="/usr/bin/nvim -e -u NORC"
  alias git='VISUAL="/usr/bin/nvim -u NORC" git'
elif type vim > /dev/null; then
  # vim exists and not nvim
  export EDITOR='vim'
  export VISUAL=$EDITOR
  # noncompatible
  alias v0="vim -N -u NORC"
  alias vi='vim -N'
  alias git='VISUAL="/usr/bin/vim -u NORC" git'
fi
