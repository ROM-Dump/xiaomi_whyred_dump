#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

PRODUCT_DEVICE := whyred
PRODUCT_NAME := lineage_whyred
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 5
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="whyred-user 9 PKQ1.180904.001 V12.0.3.0.PEICNXM release-keys"

BUILD_FINGERPRINT := xiaomi/whyred/whyred:9/PKQ1.180904.001/V12.0.3.0.PEICNXM:user/release-keys
