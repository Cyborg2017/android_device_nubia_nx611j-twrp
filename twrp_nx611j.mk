#
# Copyright (C) 2017-2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := nx611j

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Verity
$(call inherit-product, build/target/product/verity.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# qcom standard decryption
PRODUCT_PACKAGES += \
	qcom_decrypt \
	qcom_decrypt_fbe

PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_nx611j
PRODUCT_DEVICE := nx611j
PRODUCT_MANUFACTURER := Nubia
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := Nubia Z18 Mini

TARGET_VENDOR_PRODUCT_NAME := nx611j
TARGET_VENDOR_DEVICE_NAME := nx611j
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX611J PRODUCT_NAME=NX611J
