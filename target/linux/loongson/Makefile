#
# Copyright (C) 2008-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=loongarch64
BOARD:=loongson
BOARDNAME:=Loongson LoongArch Board
SUBTARGETS:=generic 3A5000 3A6000 2K1000 2K2000
FEATURES:=squashfs ext4 targz fpu boot-part rootfs-part
MAINTAINER:=phorcys <phorcys@126.com>

KERNEL_PATCHVER:=6.6
KERNELNAME:=vmlinux vmlinuz

DEFAULT_PACKAGES += partx-utils mkf2fs e2fsprogs grub-efi-loongarch64

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES +=  swconfig

$(eval $(call BuildTarget))

$(eval $(call $(if $(CONFIG_ISO_IMAGES),SetupHostCommand,Ignore),mkisofs, \
	Please install mkisofs. , \
	mkisofs -v 2>&1 , \
	genisoimage -v 2>&1 | grep genisoimage, \
	xorrisofs -v 2>&1 | grep xorriso \
))
