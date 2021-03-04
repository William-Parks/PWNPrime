#!/bin/bash

echo "
:::::::::  :::       ::: ::::    ::: :::::::::  :::::::::  ::::::::::: ::::    ::::  :::::::::: 
:+:    :+: :+:       :+: :+:+:   :+: :+:    :+: :+:    :+:     :+:     +:+:+: :+:+:+ :+:        
+:+    +:+ +:+       +:+ :+:+:+  +:+ +:+    +:+ +:+    +:+     +:+     +:+ +:+:+ +:+ +:+        
+#++:++#+  +#+  +:+  +#+ +#+ +:+ +#+ +#++:++#+  +#++:++#:      +#+     +#+  +:+  +#+ +#++:++#   
+#+        +#+ +#+#+ +#+ +#+  +#+#+# +#+        +#+    +#+     +#+     +#+       +#+ +#+        
#+#         #+#+# #+#+#  #+#   #+#+# #+#        #+#    #+#     #+#     #+#       #+# #+#        
###          ###   ###   ###    #### ###        ###    ### ########### ###       ### ########## 
"
echo ""
echo ""
echo "
Welcome to The PWNPrime Setup Script. This script is based off of a fresh installation of Kali Linux 2020.4.
First the machine will create a filesystem for all folders that are used and make new directories for storage of assets that are whilist on an engagement.
It will then run through installation of PimpMyKali to fix dependancy/package issues w/ your current version of Kali Linux.
Afterwards, it will install RustScan, feroxbuster, ffuf, SecLists, enum4linux-ng, tmux (redesigned), CrackMapExec, Joplin, and more...

Enjoy the script and happy hacking! Cheers from the 'coffee guy'!
--William P. (OfficialWilliP)
"
## Kali Linux Update, Upgrade, Remove, and Clean
sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove && sudo apt -y autoclean

## Pimp My Kali
git clone https://github.com/Dewalt-arch/pimpmykali.git ~/Desktop/tools/pimpit/pimpmykali

## Create Directories
mkdir -p ~/Desktop/tools/
cd ~/Desktop/tools/
mkdir web wordlists enumeration terminal smb notes privesc pivot windows crypto backdoors forensics RE
##Forensics - FTK Imager, Pro Discover
cd ~/Desktop/tools/notes
mkdir template
cd template
mkdir enumeration exploitation post_exploitation loot found_creds
cd found_creds
mkdir usernames passwords hashes combinations
cd ../../../../..

## Web Pentesting
echo "Web Pentesting Tools Installing..."
echo "Rust Scan"
##	RustScan
##		Downloads the amd64.deb package and runs `sudo apt install [PKGNAME].deb`
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -O ~/Desktop/tools/web/rustscan_2.0.1_amd64.deb
sudo apt install -y ~/Desktop/tools/web/rustscan_2.0.1_amd64.deb
rm -f ~/Desktop/tools/web/rustscan_2.0.1_amd64.deb
touch ~/Desktop/tools/web/RustScan_Installed.txt
echo "Done!"

echo ""
echo "feroxbuster"
##	feroxbuster
##		Downloads the amd64.deb package and runs `sudo apt install [PKGNAME].deb`
wget https://github.com/epi052/feroxbuster/releases/download/v2.0.0/feroxbuster_amd64.deb.zip -O ~/Desktop/tools/web/feroxbuster_amd64.deb.zip
unzip ~/Desktop/tools/web/feroxbuster_amd64.deb.zip -d ~/Desktop/tools/web/
sudo apt install -y ~/Desktop/tools/web/feroxbuster_2.0.0_amd64.deb
rm -f ~/Desktop/tools/web/feroxbuster_2.0.0_amd64.deb ~/Desktop/tools/web/feroxbuster_amd64.deb.zip
touch ~/Desktop/tools/web/FerroxBuster_Installed.txt
echo "Done!"

echo ""
echo "name-that-hash"
##	name-that-hash
if pip3 install name-that-hash; then 
echo "Installing using pip3"
echo "Successfully Installed"
else
echo "name-that-hash not installed..."
fi
echo "Done!"

echo ""
echo "ffuf"
##	ffuf
apt install ffuf
echo "Done!"

echo ""
echo "Wordlists Installing Now..."
## Wordlists
echo "SecLists"
##	SecLists
git clone https://github.com/danielmiessler/SecLists.git ~/Desktop/tools/wordlists/SecLists
echo "Done!"

echo ""
echo "Crackstation Wordlists"
##	Crack station wordlists
wget https://crackstation.net/files/crackstation-human-only.txt.gz -O ~/Desktop/tools/wordlists/crackstation-human-only.txt.gz
gzip ~/Desktop/tools/wordlists/crackstation-human-only.txt.gz
echo "Done!"

echo ""
echo "Enumeration Tools Installing now..."
## Enumeration Tools
echo "enum4linux-ng"
##	enum4linux-ng
git clone https://github.com/cddmp/enum4linux-ng.git ~/Desktop/tools/enumeration/enum4linux-ng
echo "Done!"

echo ""
echo "Terminal Tools Installing Now..."
## Terminal and Editing
echo "tmux redesign"
##	Oh My Tmux
git clone https://github.com/gpakosz/.tmux.git ~/Desktop/tools/terminal/tmux
cp ~/Desktop/tools/terminal/tmux/.tmux.conf ~
echo "Done!"


echo ""
echo "Emacs"
##	Emacs install
##		Ensure emacs is installed
apt install emacs
echo "Done!"

#echo ""
#echo "Doom Emacs"
##	Doom Emacs
##		Make optional
#add-apt-repository ppa:kelleyk/emacs
#apt-get update
#apt-get install emacs26
# required dependencies
#apt-get install git ripgrep
# optional dependencies
#apt-get install fd-find
#git clone --depth 1 https://github.com/hlissner/doom-emacs ~/Desktop/tools/terminal/.emacs.d
#~/Desktop/tools/terminal/.emacs.d/bin/doom install
#echo "alias doom='~/Desktop/tools/terminal/.emacs.d/bin/doom'" >> .zshrc
#echo "Done!"

echo ""
echo "Nvim --- FIXING THIS NOW"
##	Nvim
sudo apt install gperf luajit luarocks libuv1-dev libluajit-5.1-dev libunibilium-dev libmsgpack-dev libtermkey-dev libvterm-dev libutf8proc-dev
sudo luarocks build mpack
sudo luarocks build lpeg
sudo luarocks build inspect
cd ~/Desktop/tools/terminal
mkdir nvim
wget https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -O ~/Desktop/tools/terminal/nvim/nvim.appimage
chmod u+x ~/Desktop/tools/terminal/nvim/nvim.appimage
~/Desktop/tools/terminal/nvim/nvim.appimage
echo "Done!"

echo ""
echo "SMB Share Tools Installing Now..."
## SMB Share Testing
echo "CrackMapExec"
##	Crack Map Exec
git clone https://github.com/byt3bl33d3r/CrackMapExec.git ~/Desktop/tools/smb/crackmapexec
echo "Done!"

echo ""
echo "Windows Tools Installing Now..."
## Windows Tools
echo "Bloodhound"
##	Bloodhound
echo "Installing unzip for Bloodhound"
sudo apt install unzip
wget https://github.com/BloodHoundAD/BloodHound/releases/download/4.0.2/BloodHound-linux-x64.zip -O ~/Desktop/tools/Windows/Bloodhound-linux-x64.zip
sudo unzip ~/Desktop/tools/Windows/Bloodhound-linux-x64.zip
echo "Done!"

echo ""
echo "Lastly, Notetaking Software Installing..."

## Notetaking Software
echo "Joplin"
##	Joplin
##		Auto Install of Joplin

wget -O ~/joplin_install.sh https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh
chmod +x ~/joplin_install.sh
~/joplin_install.sh --allow-root
rm -f ~/joplin_install.sh
sudo ln -s ~/.joplin/Joplin.AppImage /usr/bin/joplin
if [ "$EUID" = 0 ] 
then
	echo "alias jop='joplin --no-sandbox'" >> .zshrc
fi
echo "Done!"

echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"

echo ""
echo "Done with Installation! Enjoy and happy hacking!"
echo "Cheers!"
echo "- William P. (OfficialWilliP)"

echo ""

echo "Waiting for 10 seconds..."
sleep 5

echo "Starting PimpMyKali"

~/Desktop/tools/pimpit/pimpmykali/pimpmykali.sh



echo ""
