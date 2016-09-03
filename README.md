Yubikey KDE Screensaver Lock
============================

Simple script to lock KDE desktop screensaver when Yubikey is removed from USB.

How it works
------------

- Removal of YubiKey device from USB is detected based on UDEV rule
- Script is run from UDEV rule to send DBUS notification to lock screensaver in KDE
- If hotkey is beeing pressed (default: LEFT SHIFT button), screen will not lock

Requirements
------------

- UDEV (apt-get install udev)
- KDE4 with DBUS support (standard KDE4 or later)
- evtest (`sudo apt-get install evtest`)

Installation
------------

Insert Yubikey into USB and run:

       make install


Uninstall
---------

Run command:

	make uninstall

Hotkey
-------

To not lock screen, when you're taking out your YubiKey - hold down HOTKEY on
your keyboard. This will prevent temporarily screensaver from appearing. Default HOTKEY is
LEFT SHIFT button.

License
-------

License provided in separate file LICENSE

Author
------

nshadov