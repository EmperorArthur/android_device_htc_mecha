#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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

# overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/mecha/overlay

# common
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# vendor
$(call inherit-product-if-exists, vendor/htc/mecha/mecha-vendor.mk)

# telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# boot
PRODUCT_COPY_FILES += \
    device/htc/mecha/ramdisk/fstab.mecha:root/fstab.mecha \
    device/htc/mecha/ramdisk/init.mecha.rc:root/init.mecha.rc \
    device/htc/mecha/ramdisk/ueventd.mecha.rc:root/ueventd.mecha.rc \
    device/htc/mecha/ramdisk/init.mecha.usb.rc:root/init.mecha.usb.rc

# configs
PRODUCT_COPY_FILES += \
    device/htc/mecha/configs/gps.conf:system/etc/gps.conf \
    device/htc/mecha/configs/vold.fstab:system/etc/vold.fstab \
    device/htc/mecha/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/mecha/configs/voicemail-conf.xml:system/etc/voicemail-conf.xml

# dsp
PRODUCT_COPY_FILES += \
    device/htc/mecha/dsp/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/mecha/dsp/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/mecha/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/mecha/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/mecha/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/mecha/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/mecha/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/mecha/dsp/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/mecha/dsp/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/mecha/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/mecha/dsp/AIC3254_REG_DualMicXD01.csv:system/etc/AIC3254_REG_DualMicXD01.csv \
    device/htc/mecha/dsp/AIC3254_REG_DualMicXD02.csv:system/etc/AIC3254_REG_DualMicXD02.csv

# firmware
PRODUCT_COPY_FILES += \
    device/htc/mecha/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/mecha/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/mecha/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/mecha/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mecha/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/mecha/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/mecha/prebuilt/usr/keylayout/mecha-keypad.kl:system/usr/keylayout/mecha-keypad.kl \
    device/htc/mecha/prebuilt/usr/keylayout/mecha-keypad-v0.kl:system/usr/keylayout/mecha-keypad-v0.kl \
    device/htc/mecha/prebuilt/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl

# permissions
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/etc/permissions/vzwapnlib.xml:system/etc/permissions/vzwapnlib.xml \
    device/htc/mecha/prebuilt/etc/permissions/com.verizon.phone.xml:system/etc/permissions/com.verizon.phone.xml \
    device/htc/mecha/prebuilt/etc/permissions/com.verizon.hardware.telephony.lte.xml:system/etc/permissions/com.verizon.hardware.telephony.lte.xml \
    device/htc/mecha/prebuilt/etc/permissions/com.verizon.hardware.telephony.ehrpd.xml:system/etc/permissions/com.verizon.hardware.telephony.ehrpd.xml

# touchscreen
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/mecha/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# products
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_LOCALES += en_US
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# packages
PRODUCT_PACKAGES += \
    gps.mecha \
    libbt-vendor

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.gmm=android-htc \
    ro.com.google.clientidbase.yt=android-verizon \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.delay=500 \
    ro.telephony.call_ring.multiple=false \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# profiles
PRODUCT_COPY_FILES += $(shell \
    find device/htc/mecha/dsp/soundimage -name '*.txt' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/etc\/soundimage\/\2/' \
    | tr '\n' ' ')

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
