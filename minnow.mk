# Copyright (C) 2010 The Android Open Source Project
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

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/motorola/minnow/minnow-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, build/target/product/full_base.mk)
LOCAL_PATH := device/motorola/minnow

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH  := 320

PRODUCT_PACKAGES := \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck
    
    
# Device specific init scripts
PRODUCT_COPY_FILES += \
device/motorola/minnow/rootdir/init.minnow.cust.rc:root/init.minnow.cust.rc \
device/motorola/minnow/rootdir/fstab.minnow:root/fstab.minnow \
device/motorola/minnow/rootdir/init.minnow.rc:root/init.minnow.rc \
device/motorola/minnow/rootdir/init.minnow.usb.rc:root/init.minnow.usb.rc \
device/motorola/minnow/rootdir/ueventd.minnow.rc:root/ueventd.minnow.rc

# Ramdisk files
PRODUCT_COPY_FILES += \
device/motorola/minnow/recovery/root/init.recovery.minnow.rc:recovery/root/init.recovery.minnow.rc \
device/motorola/minnow/recovery/root/etc/recovery.fstab:recovery/root/etc/recovery.fstab \
device/motorola/minnow/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
device/motorola/minnow/rootdir/firmware/image/atmxt-r2.tdat:root/firmware/image/atmxt-r2.tdat \
device/motorola/minnow/rootdir/firmware/image/atmxt-r3.tdat:root/firmware/image/atmxt-r3.tdat

# WLAN
PRODUCT_COPY_FILES += \
device/motorola/minnow/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Keylayout
PRODUCT_COPY_FILES += \
device/motorola/minnow/keylayout/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
device/motorola/minnow/keylayout/atmxt-i2c.kl:system/usr/keylayout/atmxt-i2c.idc

# Audio
PRODUCT_COPY_FILES += \
device/motorola/minnow/configs/audio_policy.conf:system/etc/audio_policy.conf \
device/motorola/minnow/configs/media_codecs.xml:system/etc/media_codecs.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
    frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
#    frameworks/native/data/etc/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml
