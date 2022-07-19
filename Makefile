do:
	chmod +x noinit
	cp noinit /usr/bin/noinit
	sed -i 's/quiet/init=\/usr\/bin\/noinit/' /boot/grub/grub.cfg
	echo "your system will now run noinit"
	reboot
undo:
	sed -i 's/init=\/usr\/bin\/noinit/quiet/' /boot/grub/grub.cfg
