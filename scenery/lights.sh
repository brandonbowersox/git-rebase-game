#!/bin/bash

NC='\033[0m' # No Color
color[0]='\033[0;31m' #Red
color[1]='\033[0;30m' #Black
color[2]='\033[1;30m' #DarkGray
color[3]='\033[1;31m' #LightRed
color[4]='\033[0;32m' #Green
color[5]='\033[1;32m' #LightGreen
color[7]='\033[0;33m' #BrownOrange
color[8]='\033[1;33m' #Yellow
color[9]='\033[0;34m' #Blue
color[10]='\033[1;34m' #LightBlue
color[11]='\033[0;35m' #Purple
color[12]='\033[1;35m' #LightPurple
color[13]='\033[0;36m' #Cyan
color[14]='\033[1;36m' #LightCyan
color[15]='\033[0;37m' #LightGray
color[16]='\033[1;37m' #White

function lightson {
  echo -n -e "${color[$RANDOM % 17]}"
}

function lightsoff {
  echo -n -e "${NC}"
}
