#!/bin/bash

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/var/packages/synoios/target/lib"

fusermount -u /volume1/AppleDevice
sleep 5;

mount | grep AppleDevice
if [ $? -ne 0 ]; then
	ifuse -o nonempty -o allow_other /volume1/AppleDevice && /usr/syno/bin/synodsmnotify @users AppleDevice "iOS device mounted successfully."
fi

sleep 20;
mount | grep AppleDevice
if [ $? -ne 0 ]; then
	ifuse -o nonempty -o allow_other /volume1/AppleDevice && /usr/syno/bin/synodsmnotify @users AppleDevice "iOS device mounted successfully."
fi

sleep 20;
mount | grep AppleDevice
if [ $? -ne 0 ]; then
	ifuse -o nonempty -o allow_other /volume1/AppleDevice && /usr/syno/bin/synodsmnotify @users AppleDevice "iOS device mounted successfully."
fi
