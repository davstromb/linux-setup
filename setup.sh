#!/bin/bash

echo "Installing some stuff..."


#acpi
n="acpi"
echo "\nInstalling $n" 
EXISTS="$(which $n)"
if [ -z "$EXISTS" ]; 
then
    apt-get install $n
else
    echo "$n already installed..."
fi

#thunar
n="thunar"
echo "\nInstalling $n" 
EXISTS="$(which $n)"
if [ -z "$EXISTS" ]; 
then
    apt-get install $n
else
    echo "$n already installed..."
fi

#aptitude
n="aptitude"
echo "\nInstalling $n" 
EXISTS="$(which $n)"
if [ -z "$EXISTS" ]; 
then
    apt-get install $n
else
    echo "$n already installed..."
fi

#geary
n="geary"
echo "\nInstalling $n" 
EXISTS="$(which $n)"
if [ -z "$EXISTS" ]; 
then
    add-apt-repository ppa:yorba/ppa
    apt-get update
    apt-get install $n
else
    echo "$n already installed..."
fi

#htop
n="htop"
echo "\nInstalling $n" 
EXISTS="$(which $n)"
if [ -z "$EXISTS" ]; 
then
    apt-get install $n
else
    echo "$n already installed..."
fi

#i3wm
n="i3"
echo "\nInstalling $n" 
EXISTS="$(which $n)"
if [ -z "$EXISTS" ]; 
then
    /usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
    apt install ./keyring.deb
    echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
    apt update
    apt install $n
else
    echo "$n already installed..."
fi