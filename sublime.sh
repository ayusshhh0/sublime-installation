#!/bin/bash
# Author : Ayush
# Description : Tool for installing Sublime

echo " Installing Sublime Text "
echo 
echo " Process Starting"
echo 
echo "Install the GPG key: "
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo
echo " Ensure apt is set up to work with https sources: "
echo 
sudo apt-get install apt-transport-https
echo
echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
echo 
echo "Updating the repos"
sudo apt-get update
echo 
echo "Installing Sublime "
sudo apt-get install sublime-text
echo 
echo " Sublime is installed "