#! /bin/bash

device="/dev/ttyUSB0"
duration="1"


if [ "$UID" -ne 0 ] ; then
	echo "we need root privilege to run this script.";
	exit 1;
fi

while [ "$1" != "" ] ; do
	case $1 in
		-d | --device )
			shift
			device=$1
			;;
		on )
			duration="1"
			;;
		kill )
			duration="8"
			;;
	esac
	shift
done
echo $device $duration

stty -F /dev/ttyUSB0 9600 raw -echo
echo -n -e '\xA0\x01\x01\xA2' > $device
sleep $duration
echo -n -e '\xA0\x01\x00\xA1' > $device

