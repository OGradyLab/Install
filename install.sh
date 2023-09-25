#!/bin/bash

# Directory for the applications
APP_DIR="/home/pi/PiClyde"

# Create the application directory if it doesn't exist
mkdir -p $APP_DIR

# Download the Python scripts and icons
wget -O $APP_DIR/Ramp.py https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.py
wget -O $APP_DIR/Pulse.py https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.py
wget -O $APP_DIR/Clyde.py https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.py
wget -O $APP_DIR/Ramp.png https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.png
wget -O $APP_DIR/Pulse.png https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.png
wget -O $APP_DIR/Clyde.png https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.png

# Make the Python scripts executable
chmod +x $APP_DIR/Ramp.py
chmod +x $APP_DIR/Pulse.py
chmod +x $APP_DIR/Clyde.py

# Create .desktop files
echo "[Desktop Entry]
Type=Application
Name=Ramp
Exec=python3 $APP_DIR/Ramp.py
Icon=$APP_DIR/Ramp.png
Categories=Pumps;
" > ~/.local/share/applications/Ramp.desktop

echo "[Desktop Entry]
Type=Application
Name=Pulse
Exec=python3 $APP_DIR/Pulse.py
Icon=$APP_DIR/Pulse.png
Categories=Pumps;
" > ~/.local/share/applications/Pulse.desktop

echo "[Desktop Entry]
Type=Application
Name=Clyde
Exec=python3 $APP_DIR/Clyde.py
Icon=$APP_DIR/Clyde.png
Categories=Pumps;
" > ~/.local/share/applications/Clyde.desktop

# Create the Pumps directory file
echo "[Desktop Entry]
Name=Pumps
Type=Directory" > ~/.local/share/desktop-directories/Pumps.directory

# Update the menu layout
MENU_FILE=~/.config/menus/lxde-pi-applications.menu
if [ ! -f "$MENU_FILE" ]; then
    cp /etc/xdg/menus/lxde-pi-applications.menu ~/.config/menus/
fi

# Add the new menu category to the menu layout if it doesn't exist
if ! grep -q "<Menu><Name>Pumps</Name><Directory>Pumps.directory</Directory><Include><Category>Pumps</Category></Include></Menu>" $MENU_FILE; then
    sed -i '/<DefaultLayout>/i <Menu><Name>Pumps</Name><Directory>Pumps.directory</Directory><Include><Category>Pumps</Category></Include></Menu>' $MENU_FILE
fi

# Refresh the desktop to reflect changes
lxpanelctl restart
