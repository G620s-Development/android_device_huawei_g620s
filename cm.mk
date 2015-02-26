#
# Copyright (C) 2014 The Mokee Opensource Project
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

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := G620S

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/g620s/full_g620s.mk)

# Torch
PRODUCT_PACKAGES += \
    Torch

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := g620s
PRODUCT_NAME := cm_g620s

#PRODUCT_BUILD_PROP_OVERRIDES Huawei G620S
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=G620S-L01 \
    BUILD_FINGERPRINT=Huawei/G620S-L01/hwG620S-L01:4.4.4/HuaweiG620S-L01/C00B242:user/release-keys \
    PRIVATE_BUILD_DESC="G620S-UL00-user 4.4.4 GRJ90 C17B242 release-keys"
