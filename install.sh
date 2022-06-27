#!/bin/bash

# Copy files to the correct locations
cp ./src/gdddns.sh /usr/local/bin/gdddns.sh
chmod +x /usr/local/bin/gdddns.sh
cp ./src/gdddns.service /etc/systemd/system/gdddns.service
cp ./src/gdddns.timer /etc/systemd/system/gdddns.timer

# Restart systemd then enable and start the service
systemctl daemon-reload
systemctl enable gdddns.timer
systemctl start gdddns.timer

