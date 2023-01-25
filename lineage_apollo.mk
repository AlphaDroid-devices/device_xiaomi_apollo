#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2022 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Alpha stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

WITH_GAPPS := true
# Compiler will only build GMS playstore services, its dependencies, and Gboard app.
TARGET_CORE_GAPPS := false
# extra flag under TARGET_CORE_GAPPS. Extra packages for core build type (velvet and photos)
TARGET_CORE_GAPPS_EXTRAS := false
ifeq ($(WITH_GAPPS),true)
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
MY_BUILD_TYPE := gapps
else
MY_BUILD_TYPE := vanilla
endif

# AlphaDroid Feature Flags
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP  := true

# Alpha internal properties
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := false
TARGET_FACE_UNLOCK_SUPPORTED := true
ALPHA_MAINTAINER := OzanKaya
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false

# Fling Sysprops
PRODUCT_PRODUCT_PROPERTIES += \
    ro.min.fling_velocity=50 \
    ro.max.fling_velocity=16000

PRODUCT_ENFORCE_VINTF_MANIFEST := false

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

BUILD_FINGERPRINT := Xiaomi/apollo_eea/apollo:12/RKQ1.211001.001/V13.0.10.0.SJDEUXM:user/release-keys
