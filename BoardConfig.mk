# inherit from the proprietary version
-include vendor/samsung/hl3g/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := hl3g

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := exynos5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_PREFER_32_BIT := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := universal5260
TARGET_BOARD_PLATFORM_GPU := mali-T624
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_SLSI_VARIANT := cm

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
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/exynos-dwc3.0/exynos-ss-udc.0/gadget/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_RECOVERY_SWIPE := true

# TWRP Specific
RECOVERY_GRAPHICS_USE_LINELENGTH := true
DEVICE_RESOLUTION := 720x1280
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := /data/media
TW_INTERNAL_STORAGE_MOUNT_POINT := sdcard
TW_EXTERNAL_STORAGE_PATH := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_CPU_TEMP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_SUPERSU := true
