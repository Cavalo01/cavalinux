echo "echo "Loading..."" >> ~/.bashrc
echo "PS1=\"┌──(cavalinux@localhost)-[~]\n└─# \"" >> ~/.bashrc
echo "chmod +x /data/data/com.termux/files/home >/dev/null" >> ~/.bashrc
echo "chmod -R 777 /data/data/com.termux/files/home >/dev/null" >> ~/.bashrc
echo "chmod +x * >/dev/null" >> ~/.bashrc
echo "chmod -R 777 * >/dev/null" >> ~/.bashrc
echo "cd / && cd storage && cd emulated && cd 0" >> ~/.bashrc
echo "alias whoami='echo cavalinux'" >> ~/.bashrc
echo "alias showfiles='ls'" >> ~/.bashrc
echo "alias brutenmap='nmap -p-'" >> ~/.bashrc
echo "alias setws='pkg install x11-repo && pkg install wireshark-qt'" >> ~/.bashrc
echo "alias setww='pkg install python && pip install wafw00f'" >> ~/.bashrc
echo "alias setprd='pkg install proot-distro'" >> ~/.bashrc
echo "alias installd='proot-distro install'" >> ~/.bashrc
echo "alias logd='proot-distro login'" >> ~/.bashrc
echo "alias setkali='termux-setup-storage && pkg install wget && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux'" >> ~/.bashrc
echo "alias localhorse='pkg install python && trap "rm -f index.html" INT && echo Type your HTML Here And Press Ctrl+D: && cat > index.html && python -m http.server'" >> ~/.bashrc
echo "alias boost='find . -type f \( -name "*.tmp" -o -name "*.cache" -o -name "*.log" -o -name "temp" -o -name "cache" -o -name "log" -o -name "*.temp" \) -exec rm {} \;'" >> ~/.bashrc
echo "alias setvb='pkg install tmux >> /dev/null && echo Downloading virtualbox..." >> ~/.bashrc
echo "alias virtualbox='tmux'" >> ~/.bashrc
echo "alias destroyall='echo Wait there! This action will destroy your files and should only be used in emergency cases. Continue? (y/n)" && read -r ans && [ "$ans" == "y" ] && shred -f -n 3 * || echo "Canceled."'" >> ~/.bashrc
