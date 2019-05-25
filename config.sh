#!/bin/sh

#username
NAME=ray

echo "you must be root."
echo  "you must be connected to ethernet."
read -p "press enter to continue."

apt update
apt upgrade

#install some essential headers and libraries
apt install build-essential dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0-dev libxcursor-dev xcursor-themes

#install programs ray uses
apt install sudo build vim feh mpv groff i3 network-manager git transmission transmission-cli make mutt pavucontrol pulseaudio xorg cups r-base autoconf gcc make python-pip hplip-gui vim-gtk3 ghc musescore pass isync scid stockfish vlc dict dictd dict-gcide calcurse neofetch cmus uzbl tabbed gstreamer1.0 sxiv locate libwebkitgtk-3.0-dev libgcr-3-dev surf xclip suckless-tools shellcheck

#install youtube-dl
pip install youtube-dl
pip install --upgrade youtube-dl

#add this user to the sudo group
usermod -aG sudo $NAME 

#git config
git config --global user.name "raygarner"
git config --global user.email ray@perfectcast.co.uk

#block ads
curl https://raw.githubusercontent.com/LukeSmithxyz/etc/master/ips > blocklist.txt
cat blocklist.txt >> /etc/hosts

#TODO
#download i3 gaps source and compile it
#download and implement vim, i3, cmus, mutt bash configs
#download desktop background
#download my st build and make it
#cownload vmware and insall it
#download cross compiler script and run it
