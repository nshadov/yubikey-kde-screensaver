UDEV_RULE="99-yubikey-kde-screensaver.rules"
LOCK_SCRIPT="yubikey-lock-screen"

install:copy_files fix_model
	@echo "Done."

uninstall: clean
	@echo "Done."

copy_files:
	@echo "Copying files."
	@sudo cp ${LOCK_SCRIPT} /usr/local/bin/ && \
	 sudo cp ${UDEV_RULE} /etc/udev/rules.d/

fix_model:
	@echo "Fixing YubiKey model version ID."
	@./fix_yubikey_device_id.sh
	@sudo chmod 700 /usr/local/bin/${LOCK_SCRIPT}

clean:
	@echo "Removing files"
	@sudo rm /usr/local/bin/${LOCK_SCRIPT} && sudo rm /etc/udev/rules.d/${UDEV_RULE}
