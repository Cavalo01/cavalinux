echo "echo 'Loading...'" >> ~/.bashrc
echo 'PS1="\[\033[1;31m\]┌──(cavalinux@localhost)-[~]\n\[\033[0;31m\]└─# \[\033[0m\]"' >> ~/.bashrc
echo "chmod +x /data/data/com.termux/files/home > /dev/null 2>&1" >> ~/.bashrc
echo "chmod -R 777 /data/data/com.termux/files/home > /dev/null 2>&1" >> ~/.bashrc
echo "chmod +x * > /dev/null 2>&1" >> ~/.bashrc
echo "chmod -R 777 * > /dev/null 2>&1" >> ~/.bashrc
echo "cd /data/data/com.termux/files/usr/libexec/termux" >> ~/.bashrc
echo "> command-not-found && echo 'echo Cavalinux: Operation Or Command Not Found. See: docs-cavalinux.vacalopp.repl.co' >> command-not-found" >> ~/.nashrc
echo "cd / && cd storage && cd emulated && cd 0 || cd " >> ~/.bashrc
echo "alias whoami='echo cavalinux'" >> ~/.bashrc
echo "alias showfiles='ls'" >> ~/.bashrc
echo "alias brutenmap='nmap -p-'" >> ~/.bashrc
echo "alias setws='pkg install x11-repo && pkg install wireshark-qt'" >> ~/.bashrc
echo "alias setww='pkg install python && pip install wafw00f'" >> ~/.bashrc
echo "alias setprd='pkg install proot-distro'" >> ~/.bashrc
echo "alias installd='proot-distro install'" >> ~/.bashrc
echo "alias logd='proot-distro login'" >> ~/.bashrc
echo "alias setkali='termux-setup-storage && pkg install wget && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux'" >> ~/.bashrc
echo 'alias boost="find . -type f \( -name \"*.tmp\" -o -name \"*.cache\" -o -name \"*.log\" -o -name \"temp\" -o -name \"cache\" -o -name \"log\" -o -name \"*.temp\" \) -exec rm {} \;"' >> ~/.bashrc
echo 'alias setvb="pkg install tmux >> /dev/null && echo Downloading virtualbox..."' >> ~/.bashrc
echo 'alias virtualbox="tmux"' >> ~/.bashrc
echo "alias destroyall='echo \"Wait there! This action will destroy your files and should only be used in emergency cases. Continue? (y/n)\" && read -r ans && [ \"\$ans\" == \"y\" ] && shred -f -n 3 * || echo \"Canceled.\"'" >> ~/.bashrc
echo "alias setnslp='pkg install dnsutils'" >> ~/.bashrc
echo "alias setwordlist='wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt > /dev/null 2>&1 && mv 10-million-password-list-top-1000000.txt wordlist.txt && echo Wordlist downloaded! Size: 8 MB, Name: wordlist.txt'" >> ~/.bashrc
echo "alias setmsf='pkg install git ruby && git clone https://github.com/rapid7/metasploit-framework.git && cd metasploit-framework && gem install bundler && bundle install && chmod +x msfconsole && mv * /storage/emulated/0'" >> ~/.bashrc
echo "alias msfconsole='./msfconsole'" >> ~/.bashrc
echo '
bruteftp() {
echo "Welcome to BruteFTP!"
  read -p "Insert your target (without '\''ftp://, http:// or https://\''): " target_site

  common_ftp_ports=("21" "22" "80" "443")  

  common_ftp_servers=(
    "ftp" "ftp1" "ftp2" "ftp3" "ftp4" "ftp5" "ftp6" "ftp7" "ftp8" "ftp9" 
    "secureftp" "ftpserver" "myftp" "testftp" "devftp" "prodftp" "publicftp" 
    "privateftp" "guestftp" "adminftp" "anonymousftp" "backupftp" "dataftp" 
    "logftp" "webftp" "docsftp" "uploadsftp" "downloadsftp" "secure-ftp" 
    "sftp" "tftp" "ftptest" "ftpuser" "ftpadmin" "ftproot" "ftpproxy" 
    "ftpsecure" "ftpclient" "ftpdata" "ftphost" "ftppass" "ftpsite" "ftpweb" 
    "ftplog" "ftplogins" "ftpaccess" "ftpgroup" "ftppanel" "ftpportal" "ftppublic" 
    "ftpvirtual" "ftpfiles" "ftpshares" "ftpdocs" "ftpupload" "ftpdownload" "ftppath" 
    "ftpinfo" "ftpdocs" "ftpshare" "ftpcontent" "ftpdatastore" "ftpfilestore" "ftpbackup" 
    "ftphosting" "ftpmirror" "ftpcloud" "ftpfarm" "ftpgateway" "ftpvpn" "ftpware" 
    "ftpservice" "ftpmanager" "ftpcentral" "ftpstorage" "ftpsync" "ftptransfer" 
    "ftpreplica" "ftpmirror" "ftpcache" "ftpproject" "ftpresearch" "ftpsandbox" 
    "ftptools" "ftpserver1" "ftpserver2" "ftpserver3" "ftpserver4" "ftpserver5" 
    "ftpserver6" "ftpserver7" "ftpserver8" "ftpserver9" "ftphost1" "ftphost2" 
    "ftphost3" "ftphost4" "ftphost5" "ftphost6" "ftphost7"
    "filetransfer"
    "uploadfiles"
    "mydata"
    "dataaccess"
    "filevault"
    "dataportal"
    "docexchange"
    "sharedrive"
    "quickconnect"
    "datahubpro"
    "transferdata"
    "filebox"
    "speedyshare"
    "datahub"
    "cloudftpx"
    "rapidconnect"
    "globalfile"
    "powerupload"
    "superfile"
    "dataelite"
    "proftpx"
    "fastshare"
    "dataxpress"
    "uptoload"
    "maxfile"
    "datasend"
    "datasyncpro"
    "syncvault"
    "filestore"
    "dataxpresspro"
    "swiftfileshare"
    "turboconnect"
    "rapidstorage"
    "prodatahub"
    "uptodata"
    "maxtransfer"
    "datahubplus"
    "cloudftpxpro"
    "dataxpressshare"
    "sharedata"
    "datasyncplus"
    "rapidsharepro"
    "swiftupload"
  )

  for server in "${common_ftp_servers[@]}"; do
for port in "${common_ftp_ports[@]}"; do
      ftp_server="${server}.${target_site}"
      if nc -z -w 5 "$ftp_server" "$port"; then
        echo "FTP Server Found on port $port! $ftp_server"
        return
      fi
    done
  done

  echo "No FTP Server Found."
}
' >> ~/.bashrc
echo '
ftphorse(){ 
echo "FTPhorse Panel"
echo "Welcome!"
echo "Insert your target: (put FTP server, like ftp.fau.de)"
read site
if response=$(curl -s "$site:21"); then
  echo "$response"
else
  echo "Error: No Response."
fi
}
' >> ~/.bashrc
echo '
fuckonnect(){
while true; do
ping -c 100000000000 cavalinux-server.vacaloppp.repl.co &
ping -c 100000000000 cavalinux-server.vacaloppp.repl.co &
ping -c 100000000000 cavalinux-server.vacaloppp.repl.co &
ping -c 100000000000 cavalinux-server.vacaloppp.repl.co &
done
}
' >> ~/.bashrc
echo '
unlock_cavalinux(){
ls /etc >/dev/null 2>&1 && echo "Cavalinux MoreAccess Is Activated For Your Device." || echo "Cavalinux MoreAccess Mode Is Not Activated. To Activate It, Downgrade DocumentsUI. Tutorial: Go To Settings > Applicattions > Search For DocumentsUI > Select DocumentsUI > Downgrade app (Normally it is on three points > Uninstall Updates)"
}
' >> ~/.bashrc
echo 'alias setslmp="pkg install python2 && git clone https://github.com/sqlmapproject/sqlmap && mv sqlmap/* . && alias sqlmap=\"python2 sqlmap.py\"" >> ~/.bashrc' >> ~/.bashrc
echo '
numbelp(){
read -p "Enter your victim phone number: " phone_number

first_three_characters=${phone_number:0:3}

url="https://www.itmnetworks.com.br/ddi-dos-paises-codigos-internacionais-de-telefone"

curl -s "$url" > temp.html

ddi_header=$(grep -A1 "<td>$first_three_characters</td>" temp.html | tail -n 1 | sed -e 's/<[^>]*>//g')

translated_ddi_header=$(curl -s -d "q=$ddi_header" "https://www.deepl.com/translator#pt/en" | grep -oP '(?<=class="lmt__translations_as_text__text_target">)(.*?)(?=<)')

if [ -n "$translated_ddi_header" ]; then
    echo "$translated_ddi_header"
else
    echo "Phone country not found. Maybe it has been a typo, or have three numbers. It only support 2 digit DDIs, Example: +55 (numbelp used list: https://www.itmnetworks.com.br/ddi-dos-paises-codigos-internacionais-de-telefone)"
fi

rm temp.html
}
' >> ~/.bashrc
echo "alias setzp='pkg install tur-repo -y && pkg install zphisher -y && echo Installed, Now run zphisher.'" >> ~/.bashrc
