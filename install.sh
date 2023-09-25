#!/bin/bash

# Create the PiClyde directory
mkdir -p /home/brian/PiClyde

# Navigate to the directory
cd /home/brian/PiClyde

# Clone the repositories
git clone https://github.com/OGradyLab/Ramp.git
git clone https://github.com/OGradyLab/Pulse.git
git clone https://github.com/OGradyLab/Clyde.git

# Download the icons
wget https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.png
wget https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.png
wget https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.png

# Make the .py files executable
chmod +x /home/brian/PiClyde/Ramp/Ramp.py
chmod +x /home/brian/PiClyde/Pulse/Pulse.py
chmod +x /home/brian/PiClyde/Clyde/Clyde.py

# Add application launchers to LXPanel
PANEL_CONFIG="$HOME/.config/lxpanel/LXDE/panels/panel"

# Backup the original panel config
cp $PANEL_CONFIG $PANEL_CONFIG.bak

# Add the application launchers
echo "Plugin {
    type = launchbar
    Config {
        Button {
            id=ramp.desktop
        }
        Button {
            id=pulse.desktop
        }
        Button {
            id=clyde.desktop
        }
    }
}" >> $PANEL_CONFIG

# Create .desktop files for autostart
mkdir -p ~/.config/autostart

echo "[Desktop Entry]
Type=Application
Name=Ramp
Exec=python3 /home/brian/PiClyde/Ramp/Ramp.py
Icon=/home/brian/PiClyde/Ramp.png
Terminal=true
Categories=Utility;" > ~/.config/autostart/Ramp.desktop

echo "[Desktop Entry]
Type=Application
Name=Pulse
Exec=python3 /home/brian/PiClyde/Pulse/Pulse.py
Icon=/home/brian/PiClyde/Pulse.png
Terminal=true
Categories=Utility;" > ~/.config/autostart/Pulse.desktop

echo "[Desktop Entry]
Type=Application
Name=Clyde
Exec=python3 /home/brian/PiClyde/Clyde/Clyde.py
Icon=/home/brian/PiClyde/Clyde.png
Terminal=true
Categories=Utility;" > ~/.config/autostart/Clyde.desktop

# Refresh the panel
lxpanelctl restart
