
# Intel Broadcast RGB configuration for Linux
Intel Broadcast RGB service for fixing visual corruption on Intel HD GPUs running Linux.

Issue : https://bugs.freedesktop.org/show_bug.cgi?id=108821

### Requirements
Make sure you have updated the system fully.

### Download
* `git clone https://github.com/tur1ngb0x/intelrgb-autostart.git`

### Configure (Optional)
* `cd intelrgb-autostart`
* Open **intelrgb.sh** with any text editor.
* In the <OUT> field, replace it with your display device(s) as mentioned in the template.
* Save the file.

### Install
* `cd intelrgb-autostart`
* `chmod +x install.sh`
* `sudo ./install.sh`

### Verify
* Restart your machine.
* The display should now show full range of colors after logging in.

### Uninstall
Automatically
* `cd intelrgb-autostart`
* `chmod +x uninstall.sh`
* `sudo ./uninstall.sh`

Manually
* `sudo systemctl stop intelrgb.service`
* `sudo systemctl disable intelrgb.service`
* `sudo rm /etc/systemd/system/intelrgb.service`
* `sudo rm /usr/bin/intelrgb.sh`
* `sudo systemctl daemon-reload`

