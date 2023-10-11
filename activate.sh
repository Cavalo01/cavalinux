echo "echo "Loading..."" >> ~/.bashrc
echo "PS1=\"┌──(cavalinux@localhost)-[~]\n└─# \"" >> ~/.bashrc
echo "chmod +x /data/data/com.termux/files/home" >> ~/.bashrc
echo "chmod -R 777 /data/data/com.termux/files/home" >> ~/.bashrc
echo "chmod +x *" >> ~/.bashrc
echo "chmod -R 777 *" >> ~/.bashrc
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
