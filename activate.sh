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
