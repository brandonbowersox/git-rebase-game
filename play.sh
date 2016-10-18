#!/bin/bash

function gitlatest {
  git pull --rebase || echo 'Could not update to the latest code from git!' && sleep 2s
}

function greeting {
  echo 'Welcome to SolDisco... (Ctrl-C to exit)'
  sleep 2s
}

#function loadmusicians {
#  ls ./musicians/
#}

function daemon {
  greeting
  while [ 1 ]; do
    ./play.sh once
    gitlatest
    sleep 1s
  done
}

function showscenery {
  if [ $((RANDOM%6)) -eq 0 ] ; then asciinote; fi
  if [ $((RANDOM%10)) -eq 0 ] ; then asciihalfnote; fi
  if [ $((RANDOM%20)) -eq 0 ] ; then ponny; fi
  if [ $((RANDOM%50)) -eq 0 ] ; then guitar; fi
}

function once {
  source ./scenery/music.sh
  source ./scenery/lights.sh
  for i in `seq 1 35`; do
    for m in `ls ./musicians`; do
      source ./musicians/$m && echo " -$m"
      sleep .7s
      lightson
      showscenery
      lightsoff
      sleep 1s
    done
  done
}

# main point of execution:
if [ "$1" == "once" ]
then once
else daemon
fi
exit
