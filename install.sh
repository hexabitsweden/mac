#!/bin/bash
clear
cd /tmp
latest_version=$(curl -fsSL "https://desktop.figma.com/mac/version.txt")
intel_url="https://desktop.figma.com/mac/Figma-${latest_version}.zip"
apple_silicon_url="https://desktop.figma.com/mac-arm/Figma-${latest_version}.zip"
echo "######################################"
echo "#         KICKS Mac-Installer            #"
echo "#      Daniel Jendinger 2024         #"
echo "######################################"
echo ""
echo "Har du en (1) Intel eller (2) Apple Silicon-Mac?"
read -p "1 eller 2:" comp_type

if [ "$comp_type" == "1" ]; then
    echo "Installerar för Intel-verionen"
    curl $intel_url --output test.zip

else
	curl $apple_intel_url --output test.zip
	echo "Installerar Silicon-verionen"
fi
echo "Laddar ner och installerar.."
unzip test.zip
#cp -r figma.app /Applications/
#rm -r figma.app
#rm test.zip
echo "Klart!!"
