#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X50 device
$(call inherit-product, device/cubot/X50/device.mk)

PRODUCT_DEVICE := X50
PRODUCT_NAME := omni_X50
PRODUCT_BRAND := CUBOT
PRODUCT_MODEL := X50
PRODUCT_MANUFACTURER := cubot

PRODUCT_GMS_CLIENTID_BASE := android-cubot

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_lv970-user 11 RP1A.200720.011 20210603 release-keys"

BUILD_FINGERPRINT := CUBOT/X50_EEA/X50:11/RP1A.200720.011/20210603:user/release-keys
