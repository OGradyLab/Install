#!/bin/bash

# Define the installation directory
INSTALL_DIR="$HOME/PiClyde"

# Create the installation directory if it doesn't exist
mkdir -p $INSTALL_DIR

# Download the Python scripts and icons
wget -O $INSTALL_DIR/Ramp.py https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.py
wget -O $INSTALL_DIR/Pulse.py https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.py
wget -O $INSTALL_DIR/Clyde.py https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.py

# Assuming the icons are named Ramp.png, Pulse.png, and Clyde.png and are located in the Install repository
wget -O $INSTALL_DIR/Ramp.png https://raw.githubusercontent.com/OGradyLab/Install/main/Ramp.png
wget -O $INSTALL_DIR/Pulse.png https://raw.githubusercontent.com/OGradyLab/Install/main/Pulse.png
wget -O $INSTALL_DIR/Clyde.png https://raw.githubusercontent.com/OGradyLab/Install/main/Clyde.png

# Make the Python scripts executable
chmod +x $INSTALL_DIR/Ramp.py
chmod +x $INSTALL_DIR/Pulse.py
chmod +x $INSTALL_DIR/Clyde.py

# Create desktop shortcuts
echo "[Desktop Entry]
Type=Application
Name=Ramp
Comment=Launch Ramp
Icon=$INSTALL_DIR/Ramp.png
Exec=python3 $INSTALL_DIR/Ramp.py
Terminal=false
Categories=Utility;" > $HOME/Desktop/Ramp.desktop

echo "[Desktop Entry]
Type=Application
Name=Pulse
Comment=Launch Pulse
Icon=$INSTALL_DIR/Pulse.png
Exec=python3 $INSTALL_DIR/Pulse.py
Terminal=false
Categories=Utility;" > $HOME/Desktop/Pulse.desktop

echo "[Desktop Entry]
Type=Application
Name=Clyde
Comment=Launch Clyde
Icon=$INSTALL_DIR/Clyde.png
Exec=python3 $INSTALL_DIR/Clyde.py
Terminal=false
Categories=Utility;" > $HOME/Desktop/Clyde.desktop

# Make the desktop shortcuts executable
chmod +x $HOME/Desktop/Ramp.desktop
chmod +x $HOME/Desktop/Pulse.desktop
chmod +x $HOME/Desktop/Clyde.desktop

echo "Installation completed!"
