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
## Kali Linux Update and Upgrade
sudo apt-get update && sudo apt-get upgrade

## Pimp My Kali
git clone https://github.com/Dewalt-arch/pimpmykali.git ~/Desktop/tools/pimpit/pimpmykali

## Create Directories
mkdir -p ~/Desktop/tools/
cd ~/Desktop/tools/
mkdir web wordlists enumeration tmux smb notes privesc twitchchat
cd ~/Desktop/tools/notes
mkdir template
cd template
mkdir enumeration services exploitation 'post exploitation' loot 'software versions' methodology
cd ../../../..

## Web Pentesting
echo "Web Pentesting Tools Installing..."
echo "Rust Scan"
##	RustScan
##		Downloads the amd64.deb package and runs `sudo apt install [PKGNAME].deb`
git clone https://github.com/epi052/feroxbuster/releases/download/v2.2.1/feroxbuster_amd64.deb.zip ~/Desktop/tools/web/rustscan
echo "Done!"

echo ""
echo "feroxbuster"
##	feroxbuster
##		Downloads the amd64.deb package and runs `sudo apt install [PKGNAME].deb`
git clone https://github.com/epi052/feroxbuster/releases/tag/v2.2.1/feroxbuster_amd64.deb.zip ~/Desktop/tools/web/feroxbuster
echo "Done!"

echo ""
echo "ffuf"
##	ffuf
git clone https://github.com/ffuf/ffuf.git ~/Desktop/tools/web/ffuf
echo "Done!"

echo ""
echo "Wordlists Installing Now..."
## Wordlists
echo "SecLists"
##	SecLists
git clone https://github.com/danielmiessler/SecLists.git ~/Desktop/tools/wordlists/SecLists
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
##	tmux redesign
git clone https://github.com/gpakosz/.tmux ~/Desktop/tools/tmux/tmux
echo "Done!"

echo ""
echo "SMB Share Tools Installing Now..."
## SMB Share Testing
echo "CrackMapExec"
##	Crack Map Exec
git clone https://github.com/byt3bl33d3r/CrackMapExec.git ~/Desktop/tools/smb/crackmapexec
echo "Done!"

echo ""
echo "Lastly, Notetaking Software Installing..."
## Notetaking Software
echo "Joplin"
##	Joplin
##		Auto Install of Joplin

#wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
echo "Done!"
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




