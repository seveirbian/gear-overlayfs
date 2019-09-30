#!/bin/bash
	
KERNEL_VERSION="4.15.18"
KERNEL_VERSION_EXPAND="linux-source-4.15.0"
	
make CONFIG_OVERLAY_FS=m -C /usr/src/$KERNEL_VERSION_EXPAND/$KERNEL_VERSION_EXPAND M=/usr/src/$KERNEL_VERSION_EXPAND/$KERNEL_VERSION_EXPAND/fs/overlayfs modules
	
cp /usr/src/$KERNEL_VERSION_EXPAND/$KERNEL_VERSION_EXPAND/fs/overlayfs/overlay.ko /lib/modules/$KERNEL_VERSION/kernel/fs/overlayfs/ 
	
depmod -a
