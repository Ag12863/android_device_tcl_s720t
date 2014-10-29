USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/tcl/s720t/BoardConfigVendor.mk

#CPU
TARGET_ARCH= arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6592
TARGET_BOARD_PLATFORM_GPU := mali-450mp

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := s720t

#KERNEL
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x805c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x60000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x805c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x805c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/tcl/s720t/kernel

#recovery
#RECOVERY_VARIANT := philz
TARGET_RECOVERY_INITRC := device/tcl/s720t/init.rc
TARGET_RECOVERY_FSTAB := device/tcl/s720t/recovery.fstab
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_TOUCH_RECOVERY := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

#repack mtk recovery
TOOLS_DIR := device/tcl/s720t/mtktools
RECOVERY_ROOT_DIR := out/target/product/s720t/recovery/root 
BOARD_CUSTOM_BOOTIMG_MK := device/tcl/s720t/mkbootimg.mk    
    

