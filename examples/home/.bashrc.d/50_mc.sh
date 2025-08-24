# sourced at the end of ~/.bashrc
# vim:set et sw=2 sts=2:

# mc related
if [ -f /usr/lib/mc/mc.sh ]; then
  . /usr/lib/mc/mc.sh
fi

# m: mc with both panel pointing the same directory
m() {
  mc "$1" "$1"
}
