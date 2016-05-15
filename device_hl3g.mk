$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/hl3g/hl3g-vendor.mk)

# Dalvik VM specific for devices with 2048 MB of RAM
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

#DEVICE_PACKAGE_OVERLAYS += device/samsung/hl3g/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Local Path
LOCAL_PATH := device/samsung/hl3g

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.universal5260:root/fstab.universal5260 \
    $(LOCAL_PATH)/rootdir/init.wifi.rc:root/init.wifi.rc \
    $(LOCAL_PATH)/rootdir/init.universal5260.rc:root/init.universal5260.rc \
    $(LOCAL_PATH)/rootdir/init.universal5260.usb.rc:root/init.universal5260.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.universal5260.rc:root/ueventd.universal5260.rc \

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# USB Accesory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.opengles.version=196608 \
    ro.zygote.disable_gl_preload=true
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=512m 
