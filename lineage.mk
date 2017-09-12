## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := MOTO360

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/minnow/full_minnow.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := minnow
PRODUCT_NAME := lineage_minnow
PRODUCT_BRAND := motorola
PRODUCT_MODEL := 360
