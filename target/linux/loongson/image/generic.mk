define Device/generic
  DEVICE_TITLE := Generic Loongarch Device
  DEVICE_PACKAGES += kmod-3c59x kmod-8139too kmod-e100 kmod-e1000 \
	kmod-ne2k-pci kmod-pcnet32 kmod-r8169 kmod-tg3 \
	kmod-fs-vfat
  GRUB2_VARIANT := generic
endef
TARGET_DEVICES += generic
