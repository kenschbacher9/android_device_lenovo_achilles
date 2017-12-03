#
# Copyright 2014 The Android Open-Source Project
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

# Use the non-open-source parts, if they're present
-include vendor/lenovo/achilles/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := achilles,a10-30l,a10-30f

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Platform
TARGET_BOARD_PLATFORM := msm8909
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304

# Board config
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12277758976
BOARD_HAS_NO_SELECT_BUTTON := 1
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
