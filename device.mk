#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltexx/gprimeltexx-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/gprimeltexx

#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

PRODUCT_PACKAGES += libtime_genoff

# ANT+
PRODUCT_PACKAGES += \
	AntHalService \
	antradio_app \
	com.dsi.ant.antradio_library \
	libantradio

# Art
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.image-dex2oat-filter=everything \
	dalvik.vm.dex2oat-filter=everything \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	ro.sys.fw.dex2oat_thread_count=4

# Audio
PRODUCT_PACKAGES += \
	audiod \
	audio.a2dp.default \
	audio.primary.msm8916 \
	audio.primary.default \
	audio_policy.msm8916 \
	audio.r_submix.default \
	audio.usb.default \
	libaudio-resampler \
	libqcompostprocbundle \
	libqcomvisualizer \
	libqcomvoiceprocessing

# Browser
PRODUCT_PACKAGES += \
	Gello

# Boot jars
PRODUCT_BOOT_JARS += \
	qcom.fmradio

# Camera
PRODUCT_PACKAGES += \
	libmm-qcamera \
	camera.msm8916 \
	Snap

# Charger
# Use cm images if available, aosp ones otherwise
PRODUCT_PACKAGES += \
    charger_res_images \
	cm_charger_res_images

# Configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
	$(LOCAL_PATH)/configs/audio/General_cal.acdb:system/etc/General_cal.acdb \
	$(LOCAL_PATH)/configs/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
	$(LOCAL_PATH)/configs/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
	$(LOCAL_PATH)/configs/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
	$(LOCAL_PATH)/configs/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/configs/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
	$(LOCAL_PATH)/configs/gps/flp.conf:system/etc/flp.conf \
	$(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/gps/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/configs/gps/sap.conf:system/etc/sap.conf \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
	$(LOCAL_PATH)/configs/sec_config:system/etc/sec_config \
	$(LOCAL_PATH)/configs/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/configs/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/configs/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Connectivity Engine support
PRODUCT_PACKAGES += \
	libcnefeatureconfig

# Default Property Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	telephony.lteOnCdmaDevice=0 \
	persist.eons.enabled=true \
	persist.radio.apm_sim_not_pwdn=1 \
	rild.libpath=/system/lib/libsec-ril.so \
	persist.cne.feature=0 \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.add_power_save=1 \
	camera2.portability.force_api=1 \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.service.adb.enable=1 \
	ro.config.zram=true

# FM
PRODUCT_PACKAGES += \
	FM2 \
	FMRecord \
	libqcomfm_jni \
	qcom.fmradio

ADDITIONAL_BUILD_PROPERTIES += \
	hw.fm.mode=normal

# FM workaround
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/enableRadioFM:system/etc/init.d/enableRadioFM

# Display
PRODUCT_PACKAGES += \
	copybit.msm8916 \
	gralloc.msm8916 \
	hwcomposer.msm8916 \
	liboverlay \
	libqdutils \
	libqservice \
	libtinyxml \
	memtrack.msm8916

# Doze
PRODUCT_PACKAGES += \
	SamsungDoze

# Ebtables
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes \
	libebtc

# Filesystem
PRODUCT_PACKAGES += \
	fsck.f2fs

# JARS
PRODUCT_PACKAGES += \
	com.google.widevine.software.drm

# Keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
	keystore.msm8916

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530FZ \
	ro.product.device=gprimeltexx \
	ro.config.zram=true

# libhealthd.qcom
PRODUCT_PACKAGES += \
	libhealthd.qcom \
	libhealthd

# Lights
PRODUCT_PACKAGES += \
	lights.msm8916

# Location, WiDi
PRODUCT_PACKAGES += \
	com.android.location.provider \
	com.android.location.provider.xml \
	com.android.media.remotedisplay \
	com.android.media.remotedisplay.xml

# Low-RAM optimizations
ADDITIONAL_BUILD_PROPERTIES += \
	config.disable_atlas=true

# macloader
PRODUCT_PACKAGES += macloader

# Misc
PRODUCT_PACKAGES += \
	Stk \
	Stk2 \
	charon \
	curl \
	javax.btobex \
	libbson \
	libcurl \
	libexifa \
	libjpega \
	libkeyutils \
	tcpdump

# Misc. libs
PRODUCT_PACKAGES += \
	libstlport \
	libboringssl-compat

# NFC
PRODUCT_PACKAGES += \
	Tag \
	com.android.nfc_extras \
	com.android.nfc.helper

# NFC packages
PRODUCT_PACKAGES += \
	NfcNci \
	libnfc-nci

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
	libstagefrighthw

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power HAL
PRODUCT_PACKAGES += \
	power.msm8916

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=false \
	dalvik.vm.heapgrowthlimit=128m \
	ro.security.icd.flagmode=single \
	ro.vendor.extension_library=libqti-perfd-client.so \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.sib16_support=1 \
	persist.gps.qc_nlp_in_use=1 \
	persist.loc.nlp_name=com.qualcomm.location \
	ro.gps.agps_provider=1 \
	ro.pip.gated=0 \
	ro.telephony.samsung.realcall=true \
	cm.updater.uri=http://grandprime.ddns.net/api \
	ro.telephony.ril_class=SamsungQcomRIL

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/etc/init.sec.boot.sh:system/etc/init.sec.boot.sh \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# Ril
PRODUCT_PACKAGES += \
	libril_shim \
	libxml2

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# TinyAlsa utils
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

# Touch issue workaround
PRODUCT_PACKAGES += \
	InputDisabler

# Terminal
PRODUCT_PACKAGES += Terminal

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# VoLTE calling support
PRODUCT_PACKAGES += \
	com.android.ims \
	com.android.ims.internal \
	ims-common \
	voip-common

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

#WLAN
PRODUCT_PACKAGES += \
	dhcpcd.conf \
	hostapd \
	hostapd_cli \
	iwconfig \
	libQWiFiSoftApCfg \
	libqsap_sdk \
	libwcnss_qmi \
	libwpa_client \
	wcnss_service \
	wpa_supplicant \
	wpa_supplicant.conf

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_gprimeltexx
PRODUCT_DEVICE := gprimeltexx
PRODUCT_MODEL := SM-G530FZ
