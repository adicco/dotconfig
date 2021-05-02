# Install modesetting drivers for Arch

`sudo pacman -S mesa intel-compute-runtime`

If Ivy Bridge or more recent, install vulkan as well:

`sudo pacman -S vulkan-intel vulkan-icd-loader ocl-icd lib32-ocl-icd`

Might only be available on AUR.

### /etc/X11/xorg.conf.d/20-modesetting.conf
```
Section "Device"
	Identifier "Intel Graphics"
	Driver "modesetting"
	Option "AccelMethod" "glamor"
EndSection

Section "Extensions"
	Option  "Composite" "true"
EndSection
```

### /etc/X11/xorg.conf.d/modesetting.conf
```
Section "Device"
	Identifier "modesetting"
	Driver "modesetting"
EndSection
```

