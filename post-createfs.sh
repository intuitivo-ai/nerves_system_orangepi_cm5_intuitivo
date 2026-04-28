#!/bin/sh

set -e

FWUP_CONFIG=$NERVES_DEFCONFIG_DIR/fwup.conf

# Copy BSP U-Boot binaries to images directory for fwup to find
cp $NERVES_DEFCONFIG_DIR/uboot/bsp-binaries/idbloader.img $BINARIES_DIR/idbloader.img
cp $NERVES_DEFCONFIG_DIR/uboot/bsp-binaries/uboot.img $BINARIES_DIR/uboot.img

# Run the common post-image processing for nerves
$BR2_EXTERNAL_NERVES_PATH/board/nerves-common/post-createfs.sh $TARGET_DIR $FWUP_CONFIG
