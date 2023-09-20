#!/bin/bash

# Directory to store downloaded files
INSTALL_DIR="$HOME/OGradyLabApps"

# Create the directory
mkdir -p $INSTALL_DIR

# Download Python scripts
wget -O $INSTALL_DIR/Ramp.py https://raw.githubusercontent.com/OGradyLab/Ramp/main/Ramp.py
wget -O $INSTALL_DIR/Pulse.py https://raw.githubusercontent.com/OGradyLab/Pulse/main/Pulse.py
wget -O $INSTALL_DIR/Clyde.py https://raw.githubusercontent.com/OGradyLab/Clyde/main/Clyde.py

# Download icons
wget -O $INSTALL_DIR/ramp_icon.png https://raw.githubusercontent.com/OGradyLab/Install/main/ramp_icon.png
wget -O $INSTALL_DIR/pulse_icon.png https://raw.githubusercontent.com/OGradyLab/Install/main/pulse_icon.png
wget -O $INSTALL_DIR/clyde_icon.png https://raw.githubusercontent.com/OGradyLab/Install/main/clyde_icon.png

# Make Python scripts executable
chmod +x $INSTALL_DIR/Ramp.py
chmod +x $INSTALL_DIR/Pulse.py
chmod +x $INSTALL_DIR/Clyde.py

# Create .desktop files
echo "[Desktop Entry]
Name=Ramp
Comment=Launch Ramp
Exec=python3 $INSTALL_DIR/Ramp.py
Icon=$INSTALL_DIR/ramp_icon.png
Terminal=false
Type=Application" > $HOME/Desktop/Ramp.desktop

echo "[Desktop Entry]
Name=Pulse
Comment=Launch Pulse
Exec=python3 $INSTALL_DIR/Pulse.py
Icon=$INSTALL_DIR/pulse_icon.png
Terminal=false
Type=Application" > $HOME/Desktop/Pulse.desktop

echo "[Desktop Entry]
Name=Clyde
Comment=Launch Clyde
Exec=python3 $INSTALL_DIR/Clyde.py
Icon=$INSTALL_DIR/clyde_icon.png
Terminal=false
Type=Application" > $HOME/Desktop/Clyde.desktop

# Make .desktop files executable
chmod +x $HOME/Desktop/Ramp.desktop
chmod +x $HOME/Desktop/Pulse.desktop
chmod +x $HOME/Desktop/Clyde.desktop

echo "Installation completed!"
