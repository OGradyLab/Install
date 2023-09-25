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
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Ramp.png
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Pulse.png
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Clyde.png

# Create desktop entries for the programs
echo "[Desktop Entry]
Type=Application
Name=Ramp
Comment=Run Ramp program
Exec=/home/pi/PiClyde/Ramp.py
Icon=/home/pi/PiClyde/Ramp.png
Terminal=false
Categories=Utility;" > ~/Desktop/Ramp.desktop

echo "[Desktop Entry]
Type=Application
Name=Pulse
Comment=Run Pulse program
Exec=/home/pi/PiClyde/Pulse.py
Icon=/home/pi/PiClyde/Pulse.png
Terminal=false
Categories=Utility;" > ~/Desktop/Pulse.desktop

echo "[Desktop Entry]
Type=Application
Name=Clyde
Comment=Run Clyde program
Exec=/home/pi/PiClyde/Clyde.py
Icon=/home/pi/PiClyde/Clyde.png
Terminal=false
Categories=Utility;" > ~/Desktop/Clyde.desktop

# Make the desktop entries executable
chmod +x ~/Desktop/Ramp.desktop
chmod +x ~/Desktop/Pulse.desktop
chmod +x ~/Desktop/Clyde.desktop

echo "Installation completed!"
