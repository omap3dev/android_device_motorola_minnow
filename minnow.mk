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
#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
LOCAL_PATH := device/motorola/minnow

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi
TARGET_BOARD_OMAP_CPU := 3630

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH  := 320

#device/motorola/minnow/rootdir/init.minnow.cust.rc:root/init.minnow.cust.rc \ 
# Device specific init scripts
#PRODUCT_COPY_FILES += \
#    device/motorola/minnow/rootdir/init.minnow.rc:root/init.minnow.rc \
#    device/motorola/minnow/rootdir/init.minnow.usb.rc:root/init.minnow.usb.rc \
#    device/motorola/minnow/rootdir/ueventd.minnow.rc:root/ueventd.minnow.rc

#PRODUCT_COPY_FILES += \
#device/motorola/minnow/rootdir/fstab.minnow:root/fstab.minnow

PRODUCT_COPY_FILES += \
device/motorola/minnow/rootdir/init.minnow.usb.rc:root/init.minnow.usb.rc 

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

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    dhcpcd \
    wpa_supplicant \
    wpa_supplicant.conf \
    
PRODUCT_PACKAGES += \
    libGLES_trace \
    libjhead \
    libjhead_jni
    
    # Ramdisk
PRODUCT_PACKAGES += \
    fstab.minnow \
    init.minnow.rc \
    ueventd.minnow.rc

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck
    
# Bluetooth
PRODUCT_PACKAGES += \
    uim-sysfs \
    libbt-vendor
    
    # Disable dirty regions invalidation
ADDITIONAL_BUILD_PROPERTIES += \
    debug.hwui.render_dirty_regions=false

# GPU producer to CPU consumer not supported
ADDITIONAL_BUILD_PROPERTIES += \
    ro.bq.gpu_to_cpu_unsupported=1
    
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.selinux=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.build.selinux=0
    
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += sys.usb.config=usbnet,adb
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=adb
    
$(call inherit-product-if-exists, vendor/motorola/minnow/minnow-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
    
