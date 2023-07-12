#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lynx device
$(call inherit-product, device/google/lynx/device.mk)

PRODUCT_DEVICE := lynx
PRODUCT_NAME := lineage_lynx
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lynx-user 13 TQ3A.230705.001 10216780 release-keys"

BUILD_FINGERPRINT := google/lynx/lynx:13/TQ3A.230705.001/10216780:user/release-keys
