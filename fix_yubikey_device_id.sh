#!/bin/bash
# Get device id from "lsusb" and substitute in UDEV rules file


read -n1 -r -p "Insert YubiKey into USB slot and press any key to continue..."

if [ "$?" -eq "0" ]; then
    
    device_id=`lsusb | grep "Yubico.com" | awk '{print $6}'`

    if [[ ${device_id} != "" ]]; then
	echo "Found device: ${device_id}"
	minor_number="${device_id##*:}"
	sudo sed -i "s/ENV{ID_MODEL_ID}=\"[0-9]*\"/ENV{ID_MODEL_ID}=\"${minor_number}\"/g" /etc/udev/rules.d/99-yubikey-kde-screensaver.rules
    else
	echo "Device not found!"
	exit -2
    fi    
else
    /bin/echo -e "\nOperation aborted by user."
    exit -1
fi
