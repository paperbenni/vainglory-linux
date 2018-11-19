#!/bin/bash
curl https://www.vainglorygame.com/quick-guide-install-vg-alpha-windows/ | grep "Download the" > vain.html 

grep -o '".*"' vain.html | sed 's/"//g' > link.txt
rm vain.html
wget -O vainglory.exe $(cat link.txt)
rm link.txt