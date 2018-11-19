#!/bin/bash
echo "looking for newest version"
curl https://www.vainglorygame.com/quick-guide-install-vg-alpha-windows/ | grep "Download the" > vain.html 

grep -o '".*"' vain.html | sed 's/"//g' > link.txt
rm vain.html
mkdir $HOME/vainglory
echo "downloading vainglory, this might take a while"
wget -O $HOME/vainglory/vainglory.exe $(cat link.txt) > /dev/null
rm link.txt