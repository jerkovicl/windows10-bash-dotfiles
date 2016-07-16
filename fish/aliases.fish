# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function c        ; pygmentize -O style=monokai -g $argv ; end
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end

# mv, rm, cp
alias mv 'command mv --interactive --verbose'
alias rm 'command rm --interactive --verbose'
alias cp 'command cp --interactive --verbose'


alias where=which # sometimes i forget

alias push="git push"


# `cat` with beautiful colors. requires Pygments installed.
alias c='pygmentize -O style=monokai -f -g'

alias master="git checkout master"

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

# Shortcuts
alias g="git"
alias v="vim"
alias ungz="gunzip -k"

# File size
alias fs="stat -f \"%z bytes\""
