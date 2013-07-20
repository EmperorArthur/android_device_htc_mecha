#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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

# common
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# include
-include vendor/htc/mecha/BoardConfigVendor.mk

# board
TARGET_BOOTLOADER_BOARD_NAME := mecha

# camera
BOARD_HAVE_HTC_FFC := true

# ril
BOARD_RIL_CLASS := "../../../device/htc/mecha/prebuilt/ril/"

# gps
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mecha
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# images
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704

# kernel
BOARD_PAGE_SIZE := 4096
BOARD_KERNEL_BASE := 0x05200000
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_KERNEL_CMDLINE := no_console_suspend=1
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30-3.0
TARGET_KERNEL_CONFIG := santod_mecha_defconfig

# sdcard
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
