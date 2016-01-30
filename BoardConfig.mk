USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/hl3g/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := universal5260
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := hl3g

# For low memory targets only (~512MB RAM & hdpi resolution)
TARGET_ARCH_LOWMEM := true

# Kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/hl3g
TARGET_KERNEL_CONFIG := cyanogenmod-exynos5260-hlltexx_00_defconfig

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2401239040
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

#Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_INITRC := device/samsung/hl3g/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/hl3g/recovery.fstab
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/hl3g/recovery/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/exynos-dwc3.0/exynos-ss-udc.0/gadget/lun0/file"

# TWRP Specific
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#DEVICE_RESOLUTION := 720x1280
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_INTERNAL_STORAGE_PATH := /data/media
#TW_INTERNAL_STORAGE_MOUNT_POINT := sdcard
#TW_EXTERNAL_STORAGE_PATH := /external_sd
#TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
#TW_NO_USB_STORAGE := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_HAS_DOWNLOAD_MODE := true
#TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
#TW_MAX_BRIGHTNESS := 255
#TW_NO_CPU_TEMP := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_EXCLUDE_SUPERSU := true
