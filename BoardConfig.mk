LOCAL_PATH := device/bq/krillin

# BOOTLOADER
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := Aquaris_E45

# PLATFORM
TARGET_BOARD_PLATFORM := mt6582
MTK_BOARD_PLATFORMS := mt6582

# ARCHITECTURE
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# RESOLUTION
DEVICE_RESOLUTION := 540x960

# PARTITIONS (via cat /proc/partitions)
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12296192
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE:=5886705664
BOARD_CACHEIMAGE_PARTITION_SIZE:=743003200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# RECOVERY NEEDED
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# VOLD
BOARD_VOLD_MAX_PARTITIONS := 25
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# KERNEL + BOOTIMG INFO
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/tools/bootimg.mk
MTK_PLATFORM := mt6582
MTK_PROJECT := krillin
TARGET_KERNEL_SOURCE := kernel/bq/krillin
TARGET_KERNEL_CONFIG := lineage_krillin_defconfig
BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048


WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true
BLOCK_BASED_OTA := false
TARGET_OTA_ASSERT_DEVICE := krillin,Aquaris_E45,alps,giraffe

# RECOVERY

# TWRP RECOVERY
ifeq ($(WITH_TWRP),true)
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery/kernel
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/recovery.fstab
DEVICE_RESOLUTION := 540x960
DEVICE_SCREEN_WIDTH := 540
DEVICE_SCREEN_HEIGHT := 960
TW_CUSTOM_THEME := $(LOCAL_PATH)/recovery/theme/black
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun0/file
TW_NO_CPU_TEMP := true
TW_EXCLUDE_MTP := true
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_CRYPTO := true
else
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/recovery.fstab
endif

# BLUETOOTH
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Power and native tap-to-wake (thanks to xen0n)
TARGET_POWERHAL_VARIANT := mtk-pablito
TARGET_POWER_SET_FEATURE_LIB := power-feature-krillin

# OpenGL GRAPHICS
USE_OPENGL_RENDERER := true

# WIFI
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

USE_MINIKIN := true
MALLOC_IMPL := dlmalloc

# FRAMEWORK WITH OUT SYNC
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# FONTS
EXTENDED_FONT_FOOTPRINT := true

# SYSTEM PROP
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# RIL
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# FLAGS
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true
USE_CAMERA_STUB := true

# SEPOLICY
BOARD_SEPOLICY_DIRS += \
    device/bq/krillin/sepolicy
