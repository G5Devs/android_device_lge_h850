#
# Copyright 2016 The AOSParadox Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from h850 device
$(call inherit-product, device/lge/h850/device.mk)

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/h850/h850-vendor.mk)
$(call inherit-product-if-exists, vendor/lge/h850/h850-vendor-blobs.mk)
$(call inherit-product-if-exists, vendor/lge/g5-common/g5-common-vendor.mk)
$(call inherit-product-if-exists, vendor/lge/g5-common/g5-common-vendor-blobs.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h850
PRODUCT_NAME := full_h850
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H850
PRODUCT_MANUFACTURER := LGE
