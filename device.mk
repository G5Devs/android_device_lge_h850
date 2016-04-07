#
# Copyright (C) 2016 The AOSParadox Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/h850/h850-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += devie/lge/h850/overlay

# Audio
PRODUCT_COPY_FILES += \
    devie/lge/h850/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml

# Common G5
$(call inherit-product, device/lge/g5-common/g5.mk)
