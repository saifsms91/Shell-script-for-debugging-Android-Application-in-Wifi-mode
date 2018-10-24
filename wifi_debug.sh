#!/bin/bash

#set -x   #Debug

IP=`adb shell ifconfig wlan0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}'`
echo ${IP}
adb tcpip 5555


adb connect ${IP}:5555