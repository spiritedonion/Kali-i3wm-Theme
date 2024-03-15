#!/bin/bash

# Array of folders to copy
folders=("Thunar" "dunst" "kitty" "nitrogen" "polybar" "ranger" "xfce4" "cherrytree" "flameshot" "nautilus" "picom" "powershell" "rofi" "i3")

# Destination directory
destination="$HOME/.config"

# Loop through each folder and copy it to the destination
for folder in "${folders[@]}"; do
    echo "Copying $folder to $destination"
    cp -r "$folder" "$destination"
done

echo "Copying completed."

# Update package lists
sudo apt update

# Install required packages
sudo apt install cherrytree dunst flameshot libgtk-3-0 i3 kitty mime-editor nautilus nitrogen picom polybar powershell pulseaudio ranger rofi thunar xfce4 -y

#Fonts
wget -P /tmp https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip -o /tmp/JetBrainsMono.zip -d /tmp/JetBrainsMono
sudo mkdir -p /usr/share/fonts/truetype/JetBrainsMono
sudo mv /tmp/JetBrainsMono/*.ttf /usr/share/fonts/truetype/JetBrainsMono
fc-cache -f -v

wget -P /tmp https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip -o /tmp/FiraCode.zip -d /tmp/FiraCode
sudo mkdir -p /usr/share/fonts/truetype/FiraCode
sudo mv /tmp/FiraCode/*.ttf /usr/share/fonts/truetype/FiraCode
fc-cache -f -v

sudo apt-get install fonts-noto-color-emoji

# Already installed on many systems, but if not:
sudo apt-get install fonts-noto

wget -P /tmp https://github.com/erikflowers/weather-icons/archive/master.zip
unzip -o /tmp/master.zip -d /tmp
sudo mkdir -p /usr/share/fonts/truetype/WeatherIcons
sudo mv /tmp/weather-icons-master/font/weathericons-regular-webfont.ttf /usr/share/fonts/truetype/WeatherIcons
fc-cache -f -v

wget -P /tmp https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
unzip -o /tmp/Iosevka.zip -d /tmp/Iosevka
sudo mkdir -p /usr/share/fonts/truetype/Iosevka
sudo mv /tmp/Iosevka/*.ttf /usr/share/fonts/truetype/Iosevka
fc-cache -f -v

wget -P /tmp https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Monofur.zip
unzip -o /tmp/Monofur.zip -d /tmp/Monofur
sudo mkdir -p /usr/share/fonts/truetype/Monofur
sudo mv /tmp/Monofur/*.ttf /usr/share/fonts/truetype/Monofur
fc-cache -f -v

wget -P /tmp https://use.fontawesome.com/releases/v6.5.1/fontawesome-free-6.5.1-desktop.zip
unzip -o /tmp/fontawesome-free-6.5.1-desktop.zip -d /tmp/fontawesome-free-6.5.1-desktop
sudo mkdir -p /usr/share/fonts/fontawesome-free
sudo mv /tmp/fontawesome-free-6.5.1-desktop/otfs/*.otf /usr/share/fonts/fontawesome-free
fc-cache -f -v

cd

echo "
██████╗░░█████╗░░█████╗░██╗░░██╗░█████╗░░██████╗░███████╗░██████╗
██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔══██╗██╔════╝░██╔════╝██╔════╝
██████╔╝███████║██║░░╚═╝█████═╝░███████║██║░░██╗░█████╗░░╚█████╗░
██╔═══╝░██╔══██║██║░░██╗██╔═██╗░██╔══██║██║░░╚██╗██╔══╝░░░╚═══██╗
██║░░░░░██║░░██║╚█████╔╝██║░╚██╗██║░░██║╚██████╔╝███████╗██████╔╝
╚═╝░░░░░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═════╝░

██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░░█████╗░████████╗██╗░█████╗░███╗░░██╗
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░███████║░░░██║░░░██║██║░░██║██╔██╗██║
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░██╔══██║░░░██║░░░██║██║░░██║██║╚████║
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗██║░░██║░░░██║░░░██║╚█████╔╝██║░╚███║
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝

░█████╗░░█████╗░███╗░░░███╗██████╗░██╗░░░░░███████╗████████╗███████╗██████╗░
██╔══██╗██╔══██╗████╗░████║██╔══██╗██║░░░░░██╔════╝╚══██╔══╝██╔════╝██╔══██╗
██║░░╚═╝██║░░██║██╔████╔██║██████╔╝██║░░░░░█████╗░░░░░██║░░░█████╗░░██║░░██║
██║░░██╗██║░░██║██║╚██╔╝██║██╔═══╝░██║░░░░░██╔══╝░░░░░██║░░░██╔══╝░░██║░░██║
╚█████╔╝╚█████╔╝██║░╚═╝░██║██║░░░░░███████╗███████╗░░░██║░░░███████╗██████╔╝
░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░░░░╚══════╝╚══════╝░░░╚═╝░░░╚══════╝╚═════╝░"

sudo reboot now
