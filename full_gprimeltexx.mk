# Inherit from gprimeltexx device
$(call inherit-product, device/samsung/gprimeltexx/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gprimeltexx
PRODUCT_NAME := full_gprimeltexx

# My own ID
TARGET_UNOFFICIAL_BUILD_ID := by_baran0119_for

$(call inherit-product-if-exists, vendor/motorola/gprimeltexx/gprimeltexx-vendor.mk)
