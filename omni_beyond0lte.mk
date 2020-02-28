$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/beyond0lte/device.mk)

### BOOTANIMATION
# vendor/omni/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
# vendor/omni/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### OMNI
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_beyond0lte
PRODUCT_DEVICE := beyond0lte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-G970F
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beyond0lte \
    PRIVATE_BUILD_DESC="beyond0ltexx-user 10 QP1A.190711.020 G970FXXU4BTA8 release-keys"

BUILD_FINGERPRINT := samsung/beyond0ltexx/beyond0:10/QP1A.190711.020/G970FXXU4BTA8:user/release-keys

ifneq ($(OMNI_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(OMNI_DEV_CERTIFICATE)
endif
