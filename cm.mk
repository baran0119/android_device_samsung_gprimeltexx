$(call inherit-product, device/samsung/gprimeltexx/full_gprimeltexx.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gprimeltexx
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G530FZ
PRODUCT_NAME := cm_gprimeltexx
PRODUCT_RELEASE_NAME := gprimeltexx

PRODUCT_GMS_CLIENTID_BASE := android-samsung
