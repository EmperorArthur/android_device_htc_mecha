# Inherit device configuration
$(call inherit-product, device/htc/mecha/full_mecha.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mecha \
    TARGET_DEVICE=mecha \
    BUILD_FINGERPRINT="verizon-wwe/mecha/mecha:4.0.4/IMM76L/370649.2:user/release-keys" \
    PRIVATE_BUILD_DESC="7.02.605.10 CL370649 release-keys" \
    BUILD_ID=IMM76L \
    BUILD_NUMBER=370649.2 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys
    
PRODUCT_NAME := cm_mecha
PRODUCT_DEVICE := mecha
