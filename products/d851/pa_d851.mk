# Copyright (C) 2016 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_d851,$(TARGET_PRODUCT))

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include AOSPA common configuration
TARGET_BOOT_ANIMATION_RES := 1440
include vendor/pa/main.mk

# Overlays
PRODUCT_PACKAGE_OVERLAYS += device/lge/d851/overlay

# Inherit device configuration
$(call inherit-product, device/lge/d851/d851.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := pa_d851
PRODUCT_DEVICE := d851
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D851
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_tmo_us" \
    BUILD_FINGERPRINT="lge/g3_tmo_us/g3:6.0/MRA58K/1609517159bca:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 6.0 MRA58K 1609517159bca release-keys"

endif
