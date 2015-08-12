USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/alel04/BoardConfigVendor.mk

# Some things.
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := alel04

# Kernel Stuff
BOARD_KERNEL_CMDLINE := androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := msm8610_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/alel04
# TARGET_PREBUILT_KERNEL := device/huawei/alel04/kernel


# Block Size Stuff
# fix this up by examining /proc/mtd on a running device
# I commented this out because it was aggrevating me.
# BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_SELECT_BUTTON := true
