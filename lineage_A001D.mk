#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sakura device
$(call inherit-product, device/asus/A001D/device.mk)

# Inherit some common source stuff
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A001D
PRODUCT_NAME := lineage_A001D
BOARD_VENDOR := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_A001D
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

TARGET_GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_Phone-user 9 PPR1 16.14.2006.305 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/WW_Phone/ASUS_A001D_2:9/PPR1/16.14.2006.305-20200615:user/release-keys"
