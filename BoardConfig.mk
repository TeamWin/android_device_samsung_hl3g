# Assert
TARGET_OTA_ASSERT_DEVICE := hl3g

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := universal5260
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_PREFER_32_BIT := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := hl3g
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/hl3g
TARGET_KERNEL_CONFIG := recovery_exynos5260-hl3gxx_00_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.8

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2401239040
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_INITRC := device/samsung/hl3g/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/hl3g/recovery/twrp.fstab
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/hl3g/recovery/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/exynos-dwc3.0/exynos-ss-udc.0/gadget/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#BOARD_RECOVERY_SWIPE := true

# TWRP Specific
DEVICE_RESOLUTION := 720x1280
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := /data/media
TW_INTERNAL_STORAGE_MOUNT_POINT := sdcard
TW_EXTERNAL_STORAGE_PATH := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_HAS_DOWNLOAD_MODE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_CPU_TEMP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_SUPERSU := true

# GPU
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/hl3g/egl/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true

# Audio
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# Camera
USE_CAMERA_STUB := true

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-hl3g

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/hl3g/cmhw/

# Radio
#BOARD_RIL_CLASS := ../../../device/samsung/hl3g/ril
#BOARD_PROVIDES_LIBRIL := true
#BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"

# Pre-L Compatibility
COMMON_GLOBAL_CFLAGS += \
    -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL \
    -DENABLE_NON_PIE_SUPPORT

# Legacy MMAP for pre-lollipop blobs
# (needed by mcDriverDaemon which in turn is needed by cbd)
BOARD_USES_LEGACY_MMAP := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# WFD
BOARD_USES_WFD_SERVICE := true

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_${BOARD_WLAN_DEVICE}
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"

# Bootanimation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# SELinux
BOARD_SEPOLICY_DIRS += \
   device/samsung/hl3g/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    service_contexts \
    device.te \
    domain.te \
    drmserver.te \
    file.te \
    gpsd.te \
    init.te \
    mediaserver.te \
    servicemanager.te \
    system_app.te \
    system_server.te \
    vold.te \
    wpa.te
