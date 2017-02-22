# Inherit from gprimeltexx device
$(call inherit-product, device/samsung/gprimeltexx/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gprimeltexx
PRODUCT_NAME := full_gprimeltexx

$(call inherit-product-if-exists, vendor/samsung/gprimeltexx/gprimeltexx-vendor.mk)
