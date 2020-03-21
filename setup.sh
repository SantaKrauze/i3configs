#!/bin/sh

set -e

dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install xss-lock nodejs-devel i3 i3lock git vim gvim tlp htop xbacklight xdm NetworkManager network-manager-applet dbus-devel libX11-devel libXrandr-devel glib2-devel pango-devel gtk2-devel libxdg-basedir-devel libXScrnSaver-devel python-devel cmake gcc texlive texmaker scidavis ffmpeg imlib2 glibc scrot
