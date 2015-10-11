# Copyright (C) 2015 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, device/huawei/alel04/full_alel04.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/alel04/alel04.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := alel04
PRODUCT_NAME := cm_alel04

PRODUCT_BUILD_PROP_OVERRIDES := \
    PRODUCT_NAME=ALEL04 \
    BUILD_FINGERPRINT=Huawei/ALE-L04/hwALE-Q:5.1/HuaweiALE-L04/C567B309:user/release-keys \
    PRIVATE_BUILD_DESC="ALE-L04-user 5.1 GRJ90 C567B309 release-keys"
