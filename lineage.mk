# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from achilles device
$(call inherit-product, device/lenovo/achilles/achilles.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_achilles
PRODUCT_DEVICE := achilles
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := TB2-X30

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BRAND := lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := achilles
TARGET_VENDOR_DEVICE_NAME := TB2-X30
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=TB2-X30 PRODUCT_NAME=achilles

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/TB2-X30F/TB2-X30F:6.0.1/LenovoTB2-X30F/TB2-X30F_S000113_160816_ROW:user/release-keys \
    PRIVATE_BUILD_DESC="msm8909-user 6.0.1 LenovoTB2-X30F TB2-X30F_S000113_160816_ROW release-keys"
endif
