#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false
TARGET_EXCLUDES_AUDIOFX := true
DERP_BUILDTYPE := Unofficial

#Gapps option 
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_CALL_RECORDING := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

include device/google/crosshatch/crosshatch/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
PRODUCT_NAME := derp_crosshatch

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
