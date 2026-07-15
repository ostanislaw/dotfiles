#!/bin/bash

capslock_hacks.sh 
teams &
/usr/bin/telegram-desktop -startintray &
brave-browser &
#com.github.johnfactotum.Foliate &
nohup google-chrome about:blank & disown
nohup safeeyes & disown
#nohup barrier --enable-crypto & disown
sleep 1
spotify &
#nmcli -f GENERAL.STATE con show zuzak_no_VPN | grep activated && nmcli con up id FortinetSpyroSoft
ip route | grep 'default via 192.168.1.1' && nmcli con up id FortinetSpyroSoft
nohup gnome-terminal -- fake_webcam.sh
nohup gnome-terminal -- bpytop
