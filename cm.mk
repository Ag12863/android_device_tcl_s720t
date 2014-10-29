## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := s720t

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/tcl/s720t/device_s720t.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s720t
PRODUCT_NAME := cm_s720t
PRODUCT_BRAND := tcl
PRODUCT_MODEL := tcl s720t
PRODUCT_MANUFACTURER := tcl
