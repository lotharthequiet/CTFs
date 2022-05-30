#!/bin/bash

# Help Section
help()
{
	echo "Syntax: startvpn.sh [-a, -h, -t]"
	echo "Options:"
	echo "a		HackTheBox Academy VPN."
	echo "h         Help (This diatribe)"
	echo "t		TryHackMe VPN"
	echo
}

#TryHackMe VPN Connection
thm()
{
	echo "Starting TryHackMe VPN Connection..."
	sudo openvpn ~/bin/lothar.ovpn
}

#HTB Academy VPN Conection
htbacademy()
{
	echo "Starting HackTheBox Academy VPN Connection..."
	sudo openvpn ~/bin/academy.ovpn
}

#MAIN

while getopts ":aht" option; do
	case $option in
		a) # open HTB Academy VPN
		   htbacademy
		   exit;;

		h) # display help
		   help
		   exit;;

		t) # open TryHackMe VPN
		   thm
		   exit;;

	       \?) # invalid
		   echo "Error: Invalid option."
		   exit;;
	esac
done
