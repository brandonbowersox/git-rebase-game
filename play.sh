#!/bin/sh

echo 'Welcome to my world...'
sleep 1s

echo 'Listen!'
sleep 1s

musicians=(./musicians/*)
random_musician=${files[RANDOM % ${#musicians[@]}]}
printf "%s\n" "$random_musician"
#printf "%s\n" "${files[RANDOM % ${#musicians[@]}]}"
#echo -n 'I hear '
