#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Aosp stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from whyred device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_whyred
PRODUCT_MODEL := Redmi Note 5 Pro

# PixelExperience Properties
TARGET_INCLUDE_WIFI_EXT := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := whyred

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="whyred-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEIMIFA release-keys"

BUILD_FINGERPRINT := xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true