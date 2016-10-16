#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltexx/gprimeltexx-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltexx

# Art
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.image-dex2oat-filter=everything \
	dalvik.vm.dex2oat-filter=everything \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	ro.sys.fw.dex2oat_thread_count=4

# Boot jars
PRODUCT_BOOT_JARS += \
	qcom.fmradio

# Configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Default Property Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.config.zram=true

# FM
PRODUCT_PACKAGES += \
	FM2 \
	FMRecord \
	libqcomfm_jni \
	qcom.fmradio

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530FZ \
	ro.product.device=gprimeltexx \
	ro.config.zram=true

# Low-RAM optimizations
ADDITIONAL_BUILD_PROPERTIES += \
	config.disable_atlas=true

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_gprimeltexx
PRODUCT_DEVICE := gprimeltexx
PRODUCT_MODEL := SM-G530FZ
