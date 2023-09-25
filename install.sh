#!/bin/bash

# Create a directory for the PiClyde programs
mkdir -p ~/PiClyde
cd ~/PiClyde

# Download the Python programs
wget https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.py
wget https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.py
wget https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.py

# Make the Python programs executable
chmod +x Ramp.py
chmod +x Pulse.py
chmod +x Clyde.py

# Download the icons
wget -O ~/PiClyde/Ramp.png https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.png
wget -O ~/PiClyde/Pulse.png https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.png
wget -O ~/PiClyde/Clyde.png https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.png

# Create desktop entries for the programs
echo "[Desktop Entry]
Type=Application
Name=Ramp
Comment=Run Ramp program
Exec=/home/brian/PiClyde/Ramp.py
Icon=/home/brian/PiClyde/Ramp.png
Terminal=false
Categories=Utility;" > ~/Desktop/Ramp.desktop

echo "[Desktop Entry]
Type=Application
Name=Pulse
Comment=Run Pulse program
Exec=/home/brian/PiClyde/Pulse.py
Icon=/home/brian/PiClyde/Pulse.png
Terminal=false
Categories=Utility;" > ~/Desktop/Pulse.desktop

echo "[Desktop Entry]
Type=Application
Name=Clyde
Comment=Run Clyde program
Exec=/home/brian/PiClyde/Clyde.py
Icon=/home/brian/PiClyde/Clyde.png
Terminal=false
Categories=Utility;" > ~/Desktop/Clyde.desktop

# Make the desktop entries executable
chmod +x ~/Desktop/Ramp.desktop
chmod +x ~/Desktop/Pulse.desktop
chmod +x ~/Desktop/Clyde.desktop

echo "Installation completed!"
