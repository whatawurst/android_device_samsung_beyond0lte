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
# See /proc/partitions on the device (block size = 1024)
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680 # 56 MB
BOARD_DTBOIMG_PARTITION_SIZE := 8388608 # 8 MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152 # 66 MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 629145600 # 614 MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5976883200 # 5 GB
BOARD_VENDORIMAGE_PARTITION_SIZE := 1153433600 # 1 GB
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 650117120 # 634 MB

# Reserve space for data encryption (119126622208 - 20480)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 119126601728

BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

### SYSTEM PROPS
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

### VENDOR PROPS
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
