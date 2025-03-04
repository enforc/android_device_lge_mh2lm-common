#
# Copyright (C) 2018 The LineageOS Project
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

COMMON_mh2lm_PATH := device/lge/mh2lm-common

# inherit from common v50
-include device/lge/sm8150-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_mh2lm_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineage_mh2lm_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4336910336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 107715436544

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# SELinux
BOARD_SEPOLICY_DIRS += $(COMMON_mh2lm_PATH)/sepolicy/vendor

# inherit from the proprietary version
-include vendor/lge/mh2lm/BoardConfigVendor.mk
