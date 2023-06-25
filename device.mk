#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
TARGET_IS_VAB := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    libpiex_shim

# Libinit
$(call soong_config_set,libinit,vendor_init_lib,//$(LOCAL_PATH):init_xiaomi_alioth)

# Miui Camera
include device/xiaomi/camera/miuicamera.mk

# Miui Camera STLicense
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/st_license.lic:$(TARGET_COPY_OUT_VENDOR)/etc/camera/st_license.lic

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

#Pocket mode

PRODUCT_PACKAGES += \
    PocketMode
    
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/pocket/privapp-permissions-pocketmode.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-pocketmode.xml

# RRO Overlays
PRODUCT_PACKAGES += \
    AliothNfc \
    SettingsOverlayM2012K11AC \
    SettingsOverlayM2012K11AG \
    SettingsOverlayM2012K11AI \
    SettingsProviderM2012K11AC \
    SettingsProviderM2012K11AG \
    SettingsProviderM2012K11AI \
    WifiOverlayM2012K11AC \
    WifiOverlayM2012K11AG \
    WifiOverlayM2012K11AI

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/alioth/alioth-vendor.mk)
