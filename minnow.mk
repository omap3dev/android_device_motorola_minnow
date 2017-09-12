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

# Device specific init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.minnow:root/fstab.minnow \
    $(LOCAL_PATH)/rootdir/init.minnow.bt.rc:root/init.minnow.bt.rc \
    $(LOCAL_PATH)/rootdir/init.minnow.cust.rc:root/init.minnow.cust.rc \
    $(LOCAL_PATH)/rootdir/init.minnow.rc:root/init.minnow.rc \
    $(LOCAL_PATH)/rootdir/init.minnow.usb.rc:root/init.minnow.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.minnow.rc:root/ueventd.minnow.rc

# Ramdisk files
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/recovery/root/init.recovery.minnow.rc:recovery/root/init.recovery.minnow.rc \
$(LOCAL_PATH)/recovery/root/etc/recovery.fstab:recovery/root/etc/recovery.fstab \
$(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
$(LOCAL_PATH)/rootdir/firmware/image/atmxt-r2.tdat:root/firmware/image/atmxt-r2.tdat \
$(LOCAL_PATH)/rootdir/firmware/image/atmxt-r3.tdat:root/firmware/image/atmxt-r3.tdat


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
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml
