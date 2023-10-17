echo "echo 'Loading...'" >> ~/.bashrc
echo 'PS1="\[\033[1;31m\]┌──(cavalinux@localhost)-[~]\n\[\033[0;31m\]└─# \[\033[0m\]"' >> ~/.bashrc
echo "chmod +x /data/data/com.termux/files/home > /dev/null 2>&1" >> ~/.bashrc
echo "chmod -R 777 /data/data/com.termux/files/home > /dev/null 2>&1" >> ~/.bashrc
echo "chmod +x * > /dev/null 2>&1" >> ~/.bashrc
echo "chmod -R 777 * > /dev/null 2>&1" >> ~/.bashrc
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
echo 'ftphorse() {' >> ~/.bashrc
echo '  echo "Welcome to ftp horse!"' >> ~/.bashrc
echo '  echo "Select An Option."' >> ~/.bashrc
echo '  echo "[1] Find FTP Server (Brute Force)"' >> ~/.bashrc
echo '  echo "[2] Find FTP Port"' >> ~/.bashrc
echo '  read -p "Your choice: " option' >> ~/.bashrc
echo '  case $option in' >> ~/.bashrc
echo '    1)' >> ~/.bashrc
echo '      read -p "Enter the target website (Example: example.com, DONT USE HTTPS:// OR HTTP://\!): " site' >> ~/.bashrc
echo '      common_ftp_servers=("ftp.$site" "sftp.$site" "secureftp.$site" "proftp.$site" "fileserver.$site" "dataftp.$site" "uploadftp.$site" "downloadftp.$site" "myftp.$site" "fileshare.$site" "centralftp.$site" "fastftp.$site" "ultimateftp.$site" "webftp.$site" "shareftp.$site" "easyftp.$site" "cloudftp.$site" "smartftp.$site" "coreftp.$site" "quickftp.$site" "syncftp.$site" "globalftp.$site" "fastsync.$site" "expressftp.$site" "bulkftp.$site" "fileexchange.$site" "datatransfer.$site" "powerftp.$site" "rapidftp.$site" "directftp.$site" "fileexchange.$site" "netftp.$site" "ftpserver.$site" "dataexchange.$site" "securefile.$site" "filecloud.$site" "eliteftp.$site" "transferftp.$site" "datasync.$site" "fileportal.$site" "superftp.$site" "filesync.$site" "cloudsync.$site" "smarttransfer.$site" "reliableftp.$site" "uploadserver.$site" "filecenter.$site" "universalftp.$site" "dataconnect.$site" "quicksync.$site" "fasttransfer.$site" "speedyftp.$site" "directfile.$site" "filexpress.$site" "swiftsync.$site" "cloudfile.$site" "datasync.$site" "filemaster.$site" "fastshare.$site" "quickfile.$site" "expresssync.$site" "powerfile.$site" "bulkfile.$site" "superfile.$site" "globalservice.$site" "fastservice.$site" "datamaster.$site" "speedyfile.$site" "syncroftp.$site" "reliablefile.$site" "uploadcenter.$site" "rapidfile.$site" "coretransfer.$site" "elitefile.$site" "globalfile.$site" "transfercenter.$site" "datamaster.$site" "smartfile.$site" "sharecenter.$site" "fileservice.$site" "centralfile.$site" "filecloud.$site" "syncserver.$site" "ultimatefile.$site" "netfile.$site" "cloudserver.$site" "coreserver.$site" "quickservice.$site" "protransfer.$site")' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '      found=0' >> ~/.bashrc
echo '      for server in "${common_ftp_servers[@]}"; do' >> ~/.bashrc
echo '        if nc -zv "$server" 21 2>/dev/null; then' >> ~/.bashrc
echo '          echo "FTP Server Found! $server Press Ctrl+C."' >> ~/.bashrc
echo '          found=1' >> ~/.bashrc
echo '        fi' >> ~/.bashrc
echo '      done' >> ~/.bashrc
echo '      if [ "$found" -eq 0 ]; then' >> ~/.bashrc
echo '        echo "No FTP server found."' >> ~/.bashrc
echo '      fi' >> ~/.bashrc
echo '      ;;' >> ~/.bashrc
echo '  2)' >> ~/.bashrc
echo '    read -p "Enter the target website (Example: example.com, DONT USE HTTPS:// OR HTTP://\!): " site' >> ~/.bashrc
echo '    result=$(nmap -p- "$site" | grep "ftp" | grep -o "([0-9]+/tcp)" | awk -F/ '\''{print $1}'\'')' >> ~/.bashrc
echo '    if [ "$result" ]; then' >> ~/.bashrc
echo '      echo "FTP Port found! $result"' >> ~/.bashrc
echo '    else' >> ~/.bashrc
echo '      echo "No FTP port found."' >> ~/.bashrc
echo '    fi' >> ~/.bashrc
echo '    ;;' >> ~/.bashrc
echo '  *)' >> ~/.bashrc
echo '    echo "Invalid option. Exiting."' >> ~/.bashrc
echo '    ;;' >> ~/.bashrc
echo 'esac' >> ~/.bashrc
echo '}' >> ~/.bashrc

