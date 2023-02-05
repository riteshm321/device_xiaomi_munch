#
# Copyright (C) 2023 BootleggersROM
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Bootleggers ROM stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/munch/device.mk)

DEVICE_MAINTAINER := Ritzzz

PRODUCT_NAME := bootleg_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.1.0.TLMMIXM:user/release-keys

# Build Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := true