# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:

# devscripts related
export DEBEMAIL=osamu@debian.org
export DEBFULLNAME="Osamu Aoki"
export DEBSIGN_KEYID="3133724D6207881579E95D621E1356881DD8D791"

# BTS report using mutt
alias bts="bts --mutt"

# Debian development
# shellcheck disable=SC2139
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
complete -F _quilt_completion -o filenames dquilt
