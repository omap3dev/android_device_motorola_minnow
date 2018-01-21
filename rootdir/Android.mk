LOCAL_PATH:= $(call my-dir)
# Device init files

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.minnow
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := fstab.minnow
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.minnow.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.minnow.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE       := init.minnow.usb.rc
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := init.minnow.usb.rc
#LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.minnow.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.minnow.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
