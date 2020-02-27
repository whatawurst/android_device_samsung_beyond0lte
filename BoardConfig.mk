#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

### INHERIT FROM YOSHIRO
include device/samsung/exynos9820-common/BoardConfigPlatform.mk
include vendor/samsung/beyond0lte/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/beyond0lte

PRODUCT_PLATFORM := exynos9820

### KERNEL
TARGET_KERNEL_CONFIG := exynos9820-beyond0lte_defconfig

### PARTITIONS
# See also /proc/partitions on the device
# block size: 4096 -> blockdev --getbsz /dev/block/sda
BOARD_BOOTIMAGE_PARTITION_SIZE := 230686720
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 270532608
BOARD_CACHEIMAGE_PARTITION_SIZE := 2516582400
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 23907532800
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
# Reserve space for data encryption (476506488832-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 476506472448
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2600468480

# Build vendor.img
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_PARTITION_SIZE := 4613734400

### VNDK
BOARD_VNDK_VERSION := current

### SYSTEM PROPS
# Add device-specific ones
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
