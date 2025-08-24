# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:

# create python venv @ $1
venv_create() {
  python3 -m venv $1
}

# activate python venv @ $1
venv_activate() {
  source $1/bin/activate
}

# update python venv
venv_update() {
  pip list --outdated | tail -n +3 | cut -d ' ' -f 1 | xargs -n1 pip install -U
}
