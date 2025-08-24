# sourced at the end of ~/.bashrc
# vim:set et sw=4 sts=4:

# gitk related
alias gk="git status && gitk --date-order --all"

alias was="wrap-and-sort -vast"

# sensible tools for html
#alias b=sensible-browser
alias b=google-chrome-stable
#   txt
alias p=sensible-pager
#   office suite
alias o=libreoffice
#   pdf
alias d=evince

# python (from shell prompt)
alias python=python3

alias yarn=yarnpkg

alias jo="env LANG=ja_JP.UTF-8 libreoffice"
alias jw="env LANG=ja_JP.UTF-8 lowriter"
alias jc="env LANG=ja_JP.UTF-8 LANGUAGE=ja gnucash"
alias jb="env LANGUAGE=ja google-chrome-stable"
