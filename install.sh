#!/usr/bin/env bash

text () { printf "\n\n\n$1\n" ; }

text "INTEL BROADCAST RGB AUTOSTART INSTALLER"
read -p " > Type 'yes' to proceed: "
if [ "$REPLY" != "yes" ]; then
   exit
fi

text "Installing intelrgb script..."
cp -iv ./intelrgb.sh /usr/bin/
chmod +x /usr/bin/intelrgb.sh

text "Installing intelrgb service..."
cp -iv ./intelrgb.service /etc/systemd/system/

text "Enabling intelrgb service..."
systemctl enable intelrgb.service

text "Starting intelrgb service..."
systemctl start intelrgb.service

text "Reloading systemd daemon..."
systemctl daemon-reload

text "Done"

