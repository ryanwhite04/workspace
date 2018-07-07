#!/bin/bash

alias mkdp='mkdir -pv' # for recursive directories

# lets it stop and restart
alias wget='wget -c'

# hist [string] shows recent commands containing string
alias hist='history | grep'

# a better ls
alias list='ls -lhA'

# run on dir to find how much space it takes
alias disk='sudo du -ch --max-depth=1'

# get disk source, /dev/something
alias dsrc='findmnt -rno source --target'

# get disk label, probably ext4
alias dlbl='findmnt -rno label --target'


alias show='show alias: "alias", For every function: "declare -F", For environment settings: "printenv"'

alias npml='npm list -g --depth=0'

alias fuck='sudo !!'