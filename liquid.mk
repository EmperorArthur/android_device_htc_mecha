#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
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

# device
$(call inherit-product, device/htc/mecha/full_mecha.mk)

# cdma
$(call inherit-product, vendor/liquid/config/common_cdma.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# products
PRODUCT_NAME := liquid_mecha
PRODUCT_BRAND := verizon_wwe
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := ThunderBolt
PRODUCT_MANUFACTURER := HTC
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.mecha.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML74K \
    BUILD_NUMBER=370649.2 \
    PRODUCT_NAME=htc_mecha \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="7.00.605.2 CL370649 release-keys" \
    BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha:4.0.3/IML74K/370649.2:user/release-keys

