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

# overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/mecha/overlay

# common
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# vendor
$(call inherit-product-if-exists, vendor/htc/mecha/mecha-vendor.mk)

# atmel
PRODUCT_COPY_FILES += \
	device/htc/mecha/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# firmware
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/mecha/system/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/mecha/system/etc/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    device/htc/mecha/system/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/mecha/system/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    device/htc/mecha/system/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin

# keychars
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/mecha/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/mecha/system/usr/keychars/mecha-keypad.kcm.bin:system/usr/keychars/mecha-keypad.kcm.bin \
    device/htc/mecha/system/usr/keychars/mecha-keypad-v0.kcm.bin:system/usr/keychars/mecha-keypad-v0.kcm.bin

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mecha/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/mecha/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/mecha/system/usr/keylayout/mecha-keypad.kl:system/usr/keylayout/mecha-keypad.kl \
    device/htc/mecha/system/usr/keylayout/mecha-keypad-v0.kl:system/usr/keylayout/mecha-keypad-v0.kl

# locales
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_LOCALES += en_US
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# microphones
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMicXD01.csv:system/etc/AIC3254_REG_DualMicXD01.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMicXD02.csv:system/etc/AIC3254_REG_DualMicXD02.csv \
    device/htc/mecha/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/mecha/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/mecha/system/etc/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/mecha/system/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/mecha/system/etc/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/mecha/system/etc/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/mecha/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

# packages
PRODUCT_PACKAGES += \
    gps.mecha \
    lights.mecha \
    sensors.mecha

# prebuilts
PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/init.mecha.rc:root/init.mecha.rc \
    device/htc/mecha/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/mecha/kernel/ueventd.mecha.rc:root/ueventd.mecha.rc \
    device/htc/mecha/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml

# properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=1 \
    media.a1026.enableA1026=0 \
    media.a1026.nsForVoiceRec=0 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.vs=android-verizon \
    ro.com.google.clientidbase.gmm=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.delay=500 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.home.operator.numeric=310004 \
    ro.telephony.call_ring.multiple=false \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# profiles
PRODUCT_COPY_FILES += $(shell \
    find device/htc/mecha/system/etc/soundimage -name '*.txt' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/etc\/soundimage\/\2/' \
    | tr '\n' ' ')

