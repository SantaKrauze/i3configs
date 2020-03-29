#!/bin/sh

set -e
echo Deploying files:
cp .vimrc ~/
cp .Xresources ~/
mkdir ~/.config
mkdir ~/.config/i3
cp config ~/.config/i3
cp xorg.conf /etc/X11
cp Xresources /etc/X11/xdm
mkdir ~/Pictures
mkdir ~/Pictures/bg
cp icon.png ~/Pictures/bg
cp 2.png ~/Pictures/bg

echo Setting privilages:
chmod +x lock.sh

echo Adding rpmfusion:
dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 
dnf install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo Installing repos:
echo i3 basics:
dnf install nodejs-devel i3 i3lock xdm NetworkManager network-manager-applet dbus-devel libX11-devel libXrandr-devel glib2-devel pango-devel gtk2-devel libxdg-basedir-devel libXScrnSaver-devel python-devel cmake 

echo Other i3 stuff:
dnf install dunst xss-lock xbacklight scrot feh lxappearance thunar

systemctl enable xdm

echo All the rest:
dnf install firefox chromium chromium-vaapi vim gvim tlp htop gcc texlive texmaker scidavis ffmpeg imlib2 glibc scrot lpf-spotify-client

echo Setting it up:
feh --bg-fill ~/Pictures/bg/2.png
