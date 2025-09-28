basic config, still learning!
### day 28/09/25

resolved prime graphics bugs by updating "/usr/local/bin/start-hyprland.sh":
	```
	#!/bin/bash
	export XDG_CURRENT_DESKTOP=Hyprland
	export XDG_SESSION_TYPE=wayland
	export XDG_SESSION_DESKTOP=Hyprland
	export WLR_DRM_DEVICES=/dev/dri/card0

	exec dbus-run-session Hyprland
	```
	the putting on /usr/share/wayland-sessions/hyprland.desktop