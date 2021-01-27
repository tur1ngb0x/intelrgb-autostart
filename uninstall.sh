#!/usr/bin/env bash

text () { printf "\n\n\n$1\n" ; }

text "INTEL BROADCAST RGB AUTOSTART UNINSTALLER"
read -p " > Type 'yes' to proceed: "
if [ "$REPLY" != "yes" ]; then
   exit
fi

text "Stopping intelrgb service..."
systemctl stop intelrgb.service

text "Disabling intelrgb service..."
systemctl disable intelrgb.service

text "Removing intelrgb service..."
rm -v /etc/systemd/system/intelrgb.service

text "Removing intelrgb script..."
rm -v /usr/bin/intelrgb.sh

text "Reloading systemd daemon..."
systemctl daemon-reload

text "Done"

