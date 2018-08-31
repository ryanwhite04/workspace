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
alias adds='_() { git submodule add -b . "$(cd $1 && git config --get remote.origin.url)" $1; }; _'
alias live='pnpx live-server'
alias http='pnpx http-server'

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# For photos
# Converts png, heic, HEIC, jpeg, JPG JPEG to jpg
function toJPG {
  for pic in */*.JPG;  do echo      "$pic   ${pic//.JPG}.jpg";   done
  for pic in */*.jpeg; do echo      "$pic   ${pic//.jpeg}.jpg";  done
  for pic in */*.JPG;  do mv        "$pic" "${pic//.JPG}.jpg";   done
  for pic in */*.HEIC; do mv        "$pic" "${pic//.HEIC}.heic"; done
  for pic in *.heic;   do tifig -vp "$pic   ${pic/%.heic/.jpg}"; done
}

# For logos
# Converts svg to png
function toPNG {
  convert -size 2014x1024 $1 "${1//.svg}.png"
}

# watermark dir watermark.png
# Watermarks all jpg files in dir with watermark.png
function watermark {
  for pic in */*.jpg; do composite -dissolve 30% -gravity southeast ACELS.png "$pic" "marked/${pic//.jpg}.jpg"; done
  for pic in *.jpg; do composite -dissolve 30% -gravity northeast ../ACELS-cw.png "$pic" "${pic//.jpg}-marked.jpg"; done
  for pic in */*.jpg; do echo "$pic" "marked/${pic//.jpg}.jpg"; done
}
