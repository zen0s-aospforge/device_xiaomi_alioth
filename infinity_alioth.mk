#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit Camera-related flags
TARGET_USES_MIUI_CAMERA := true
TARGET_INCLUDES_MIUI_CAMERA := true

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Project Infinity X Flags
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := "zenzer0s"
TARGET_SUPPORTS_BLUR := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GAPPS := true


PRODUCT_NAME := infinity_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/alioth_global/alioth:13/TKQ1.221114.001/V816.0.3.0.TKHMIXM:user/release-keys

