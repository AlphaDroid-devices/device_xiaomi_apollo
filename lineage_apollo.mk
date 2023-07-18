#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2022 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common VoidUI stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

WITH_GAPPS := true
TARGET_CORE_GAPPS := false
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Alpha internal properties
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := false
TARGET_USE_GRAPHENE_CAMERA := false
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := OzanKaya

PRODUCT_ENFORCE_VINTF_MANIFEST := false

TARGET_DEFAULT_ADB_ENABLED := true


# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

PRODUCT_NAME := lineage_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_eea-user 12 RKQ1.211001.001 V13.0.10.0.SJDEUXM release-keys"
