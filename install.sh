#!/bin/bash
curl https://www.vainglorygame.com/quick-guide-install-vg-alpha-windows/ | grep "Download the .exe " > vain.html 

grep -o '".*"' vain.html | sed 's/"//g' > link.txt
rm vain.html
wget $(cat link.txt)
