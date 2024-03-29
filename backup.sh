#!/bin/bash


echo ==================================================================
echo Initializing system update and environment installation...........
echo ==================================================================

# update distro
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y --fix-broken


#gnome
sudo apt install -y gnome-shell-extensions

sudo apt install -y software-properties-common checkinstall wget curl gpg
sudo apt install -y build-essential
sudo apt install -y snapd
sudo apt install -y flatpak
sudo apt install -y gnome-tweak-tool
sudo apt install -y gnome-software-plugin-flatpak
sudo apt install -y unzip
sudo apt install -y vlc

sudo apt-get install -y fonts-roboto
sudo apt-get install -y ubuntu-restricted-extras


# dev tools

sudo apt-get install -y openjdk-11-jdk
sudo apt-get install -y maven
sudo apt-get install -y gufw
sudo apt-get install -y golang
sudo apt-get install -y git
sudo apt-get install -y postgresql-client
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
sudo nvm install node
sudo apt install -y default-jdk
sudo apt-get install -y yarn
sudo apt install -y python3       
sudo apt install -y python-pip
sudo apt install -y docker.io
sudo apt install -y docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown $USER /var/run/docker.sock
sudo snap install postman
sudo snap install code --classic
sudo snap install intellij-idea-community --classic
sudo snap install discord

# media 
sudo snap install -y spotify
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

## Only in ubuntu
#wget http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/libx264-152_0.152.2854+gite9a5903-2_amd64.deb

# final update
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y --fix-broken
sudo apt autoremove -y
