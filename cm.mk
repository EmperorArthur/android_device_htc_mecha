## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mecha

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/mecha/device_mecha.mk)

# Device naming
PRODUCT_DEVICE := mecha
PRODUCT_NAME := cm_mecha
PRODUCT_BRAND := verizon_wwe
PRODUCT_MODEL := HTC Thunderbolt
PRODUCT_MANUFACTURER := HTC
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=cm.mecha.$(shell date +%m%d%y).$(shell date +%H%M%S)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_mecha \
    BUILD_ID=IMM76L \
    BUILD_NUMBER=370649.2 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="7.00.605.2 CL370649 release-keys" \
    BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha:4.0.4/IML74K/370649.2:user/release-keys
