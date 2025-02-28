#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common lineage Os configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, vendor/lineage/config/BoardConfigReservedSize.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

# Axion Stuff
AXION_CAMERA_REAR_INFO := 50,2
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Dhanush
AXION_PROCESSOR := Snapdragon®_4_Gen2

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := lineage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
