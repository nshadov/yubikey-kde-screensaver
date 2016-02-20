Yubikey KDE Screensaver Lock
============================

Simple script to lock KDE desktop screensaver when Yubikey is removed from USB.

How it works
------------

- Removal of YubiKey device from USB is detected based on UDEV rule
- Script is run from UDEV rule to send DBUS notification to lock screensaver in KDE

Requirements
------------

- UDEV (apt-get install udev)
- KDE4 with DBUS support (standard KDE4 or later)

Installation
------------

Insert Yubikey into USB and run:

	make install


Uninstall
---------

Run command:

	make uninstall


License
-------

License provided in separate file LICENSE

Author
------

nshadov