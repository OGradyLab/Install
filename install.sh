#!/bin/bash

# Create a directory for the programs
mkdir -p ~/PiClyde

cd ~/PiClyde

# Download the programs and icons from GitHub
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Ramp.py
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Pulse.py
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Clyde.py
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Ramp.png
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Pulse.png
wget https://raw.githubusercontent.com/OGradyLab/Install/main/Clyde.png

# Make the Python scripts executable
chmod +x Ramp.py Pulse.py Clyde.py

# Create desktop icons for the programs
for program in Ramp Pulse Clyde; do
cat > ~/Desktop/$program.desktop <<EOL
[Desktop Entry]
Type=Application
Name=$program
Exec=python3 ~/PiClyde/$program.py
Icon=~/PiClyde/$program.png
Terminal=false
EOL

# Make the .desktop files executable
chmod +x ~/Desktop/$program.desktop
done

# Notify the user
echo "Installation complete! You should now see icons for Ramp, Pulse, and Clyde on your desktop."
