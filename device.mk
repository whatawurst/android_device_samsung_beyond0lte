### PLATFORM
$(call inherit-product, device/samsung/exynos9820-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/beyond0lte/beyond0lte-vendor.mk)

### DALVIK
$(call inherit-product, vendor/omni/config/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, vendor/omni/config/phone-xxhdpi-2048-hwui-memory.mk)

DEVICE_PATH := device/samsung/beyond0lte

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay
