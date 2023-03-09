#!/usr/bin/env bash

echo "Welcome to Santorini"
echo "Installing..."
sudo mkdir -p /opt/Santorini
sudo cp -R jdk-15.0.1 /opt/Santorini/jdk-15.0.1
sudo cp -R jar /opt/Santorini/jar
sudo cp -R bin /opt/Santorini/bin
sudo chmod +x /opt/Santorini/bin/santorini
sudo ln -s /opt/Santorini/bin/santorini /usr/local/bin/santorini
# TODO: add desktop file to /usr/share/applications
echo "Done"