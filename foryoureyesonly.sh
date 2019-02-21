#!/bin/bash

while(true); do
 echo '3-2' |sudo tee /sys/bus/usb/drivers/usb/unbind
 echo '3-1' |sudo tee /sys/bus/usb/drivers/usb/unbind
 xset dpms force off

 sleep 30

 echo '3-2' |sudo tee /sys/bus/usb/drivers/usb/bind
 echo '3-1' |sudo tee /sys/bus/usb/drivers/usb/bind
 xset dpms force on

 sleep 30m

done
