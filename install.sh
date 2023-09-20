#!/bin/bash

# Create a directory for the programs
mkdir ~/PiPrograms
cd ~/PiPrograms

# Download the programs and icons from GitHub
wget https://github.com/OGradyLab/Ramp/raw/main/Ramp.py
wget https://github.com/OGradyLab/Pulse/raw/main/Pulse.py
wget https://github.com/OGradyLab/Clyde/raw/main/Clyde.py

wget https://github.com/OGradyLab/Ramp/raw/main/Ramp.png
wget https://github.com/OGradyLab/Pulse/raw/main/Pulse.png
wget https://github.com/OGradyLab/Clyde/raw/main/Clyde.png

# Make the programs executable
chmod +x Ramp.py Pulse.py Clyde.py

# Create desktop shortcuts
echo "[Desktop Entry]
Name=Ramp
Exec=python3 ~/PiPrograms/Ramp.py
Icon=~/PiPrograms/Ramp.png
Type=Application" > ~/Desktop/Ramp.desktop

echo "[Desktop Entry]
Name=Pulse
Exec=python3 ~/PiPrograms/Pulse.py
Icon=~/PiPrograms/Pulse.png
Type=Application" > ~/Desktop/Pulse.desktop

echo "[Desktop Entry]
Name=Clyde
Exec=python3 ~/PiPrograms/Clyde.py
Icon=~/PiPrograms/Clyde.png
Type=Application" > ~/Desktop/Clyde.desktop

# Make the desktop entries executable
chmod +x ~/Desktop/Ramp.desktop ~/Desktop/Pulse.desktop ~/Desktop/Clyde.desktop

echo "Installation completed!"
