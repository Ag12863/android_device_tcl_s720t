$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/tcl/s720t/s720t-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/tcl/s720t/overlay

LOCAL_PATH := device/tcl/s720t
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Recovery
PRODUCT_COPY_FILES += \
    device/tcl/s720t/recovery/fstab.mt6592:recovery/root/fstab.mt6592

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s720t
PRODUCT_DEVICE := s720t
