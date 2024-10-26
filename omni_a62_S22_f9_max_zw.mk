#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a62_S22_f9_max_zw device
$(call inherit-product, device/alps/a62_S22_f9_max_zw/device.mk)

PRODUCT_DEVICE := a62_S22_f9_max_zw
PRODUCT_NAME := omni_a62_S22_f9_max_zw
PRODUCT_BRAND := alps
PRODUCT_MODEL := F9 Max
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_a62_S22_f9_max_zw-user 12 SP1A.210812.016 mp1V14511 release-keys"

BUILD_FINGERPRINT := alps/full_a62_S22_f9_max_zw/a62_S22_f9_max_zw:12/SP1A.210812.016/mp1V14511:user/release-keys
