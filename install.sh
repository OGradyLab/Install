#!/bin/bash

# Create a directory for the PiClyde programs
mkdir -p ~/PiClyde

# Navigate to the directory
cd ~/PiClyde

# Clone the repositories
git clone https://github.com/OGradyLab/Ramp.git
git clone https://github.com/OGradyLab/Pulse.git
git clone https://github.com/OGradyLab/Clyde.git

# Create desktop shortcut for Ramp
echo "[Desktop Entry]
Version=1.0
Name=Ramp
Comment=Run Ramp Program
Exec=python3 ~/PiClyde/Ramp/Ramp.py
Icon=~/PiClyde/Ramp/Ramp.png
Terminal=false
Type=Application
Categories=Utility;Application;" > ~/Desktop/Ramp.desktop

# Create desktop shortcut for Pulse
echo "[Desktop Entry]
Version=1.0
Name=Pulse
Comment=Run Pulse Program
Exec=python3 ~/PiClyde/Pulse/Pulse.py
Icon=~/PiClyde/Pulse/Pulse.png
Terminal=false
Type=Application
Categories=Utility;Application;" > ~/Desktop/Pulse.desktop

# Create desktop shortcut for Clyde
echo "[Desktop Entry]
Version=1.0
Name=Clyde
Comment=Run Clyde Program
Exec=python3 ~/PiClyde/Clyde/Clyde.py
Icon=~/PiClyde/Clyde/Clyde.png
Terminal=false
Type=Application
Categories=Utility;Application;" > ~/Desktop/Clyde.desktop

# Mark the launchers as trusted
gio set "$HOME/Desktop/Ramp.desktop" "metadata::trusted" yes
gio set "$HOME/Desktop/Pulse.desktop" "metadata::trusted" yes
gio set "$HOME/Desktop/Clyde.desktop" "metadata::trusted" yes
