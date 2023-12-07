define Device/2K2000
  DEVICE_TITLE := Loongson 2K2000 Device
  DEVICE_PACKAGES += kmod-3c59x kmod-8139too kmod-e100 kmod-e1000e kmod-e1000 \
	 kmod-ne2k-pci kmod-pcnet32 kmod-r8169 kmod-tg3 kmod-fs-vfat
  GRUB2_VARIANT := efi
endef
TARGET_DEVICES += 2K2000