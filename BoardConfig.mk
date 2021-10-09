BOARD_VENDOR := nokia

DEVICE_PATH := device/nokia/Phoenix

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_NO_BOOTLOADER := true

# Build system
BUILD_BROKEN_DUP_RULES := true

# Platform
TARGET_BOARD_PLATFORM := sdm710
BUILD_WITHOUT_VENDOR := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 swiotlb=1 loop.max_part=7
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/nokia/sdm710
TARGET_KERNEL_CONFIG := pnx-perf_defconfig

# A/B updater
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system

# Assert
TARGET_OTA_ASSERT_DEVICE := PNX_sprout

# Audio
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Partition (boot)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144

# Partition (system)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_SYSTEM_OTHER_ODEX := true

# Use mke2fs to create ext4 images
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BUILD_WITHOUT_VENDOR := true
TARGET_COPY_OUT_VENDOR := vendor

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/nokia/Phoenix/rootdir/etc/recovery.fstab

# Sepolicy
include device/qcom/sepolicy/SEPolicy.mk
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
