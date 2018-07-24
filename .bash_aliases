#!/bin/bash

alias mkdp='mkdir -pv' # for recursive directories
alias wget='wget -c' # lets it stop and restart
alias hist='history | grep' # hist [string] shows recent commands containing string
alias list='ls -lhA' # a better ls
alias disk='sudo du -ch --max-depth=1' # run on dir to find how much space it takes
alias dsrc='findmnt -rno source --target' # get disk source, /dev/something
alias dlbl='findmnt -rno label --target' # get disk label, probably ext4
alias fuck='sudo !!'
alias updg='sudo apt update && sudo apt full-upgrade && sudo apt autoremove'
alias show='alias && declare -F && printenv && npm list -g --depth=0'
alias adds='_() { git submodule add "$(cd $1 && git config --get remote.origin.url)" $1; }; _'
