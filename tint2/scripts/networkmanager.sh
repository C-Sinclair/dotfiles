#!/bin/sh

CONNAME=$(nmcli -a | grep 'connected' | awk 'NR==1{print $1}')
if [ "$CONNAME" = "" ]; then
  CONNAME=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -c 5-)
fi

PRIVATE=$(nmcli -a | grep 'inet4 192' | awk '{print $2}')
PUBLIC=$(curl -s https://ipinfo.io/ip)

printf "%s" "$SEP1"
if [ "$CONNAME" != "" ]; then    
  printf " %s" # %s" "$CONNAME" ########"$PRIVATE" "$PUBLIC"🌐
else
  printf " %s"
fi 
  printf "%s" #"$SEP2"

