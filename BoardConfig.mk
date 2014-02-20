# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

COMMON_GLOBAL_CFLAGS += -Def52l -DNEED_UMS_ENABLE
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT

# Init
TARGET_PROVIDES_INIT_RC := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/pantech/ef52l/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Bluetooth
TARGET_CUSTOM_BLUEDROID := ../../../device/pantech/ef52l/bluetooth/bluetooth.c

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0 vmalloc=0x12c00000
# Ramdiskaddr is 0x82200000, You should need --ramdisk_offset
#BOARD_FORCE_RAMDISK_ADDRESS := 0x82200000
# RAMDISKADDR and RAMDISK_OFFSET is Not supported to AOSP
# Please repack to boot image!
#BOARD_MKBOOTIMG_ARGS := -ramdisk_offset 0x02000000
# mkbootimg --cmdline "console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0 vmalloc=0x12c00000" --base 0x80200000 --pagesize 2048 --kernel kernel --ramdisk ramdisk.gz --ramdisk_offset 0x02000000 -o boot.img

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/pantech/ef52l/vibrator/vibrator.c

# Wifi
BOARD_HAS_QCOM_WLAN		 := true
WIFI_DRIVER_MODULE_NAME          := "prima_wlan"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB	 := lib_driver_cmd_qcwcn
CONFIG_DRIVER_NL80211		 := true
BOARD_WLAN_DEVICE                := qcwcn
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

TARGET_PREBUILT_KERNEL := device/pantech/ef52l/kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

# QCOM GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := ef52l

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 26

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/pantech/ef52l/recovery/recovery_keys.c
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_EMMC_WIPE := true
# Recovery Graphics fix
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
# ef52l CPU Architecture is Krait 300
TARGET_CPU_VARIANT := krait
BOARD_EGL_CFG := device/pantech/ef52l/configs/egl.cfg

