#!/bin/bash

#module compat removed because not found
#sudo modprobe -r iwlwifi iwlmvm mac80211 cfg80211
sudo modprobe -r iwlwifi
#sleep 1
#sudo modprobe iwlwifi iwlmvm mac80211 cfg80211
sudo modprobe -v iwlwifi

