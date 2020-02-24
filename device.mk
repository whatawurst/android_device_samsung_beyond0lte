### PLATFORM
$(call inherit-product, device/samsung/universal9820-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/beyond0lte/beyond0lte-vendor.mk)

ifeq ($(WITH_FDROID),true)
$(call inherit-product, vendor/fdroid/fdroid-vendor.mk)
endif
ifeq ($(WITH_MICROG),true)
$(call inherit-product, vendor/microg/microg-vendor.mk)
endif

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

DEVICE_PATH := device/samsung/beyond0lte

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi xxhdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

include $(DEVICE_PATH)/device/*.mk
