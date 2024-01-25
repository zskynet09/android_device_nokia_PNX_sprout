# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-impl.recovery \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Device init
PRODUCT_PACKAGES += \
    fqcaudioloopback_pnx.sh \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.pnx.lcm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.qcv.sh \
    init.sensor.e2pwrite.sh \
    qca6234-service.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    android.hardware.nfc@1.2-service.sec.rc \
    init.fih.ramdump.rc \
    init.fingerprint.et520.rc \
    init.fingerprint.gf3258.rc \
    init.msm.usb.configfs.rc \
    init.nfc.sec.rc \
    init.pnx.audio.rc \
    init.pnx.chromatix.rc \
    init.pnx.elabel.rc \
    init.pnx.lcm.rc \
    init.pnx.sensor.rc \
    init.pnx.target.rc \
    init.pnx.touch.rc \
    init.qcom.emmc.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.target.rc \
    init.qcom.usb.rc \
    init.qti.ufs.rc \
    init.sku.600E0.PNX.rc \
    init.sku.600E0.PNXI.rc \
    init.sku.600E0.PNXR.1.rc \
    init.sku.600E0.PNXR.2.rc \
    init.sku.600E0.rc \
    init.sku.600ID.PNX.rc \
    init.sku.600ID.PNXI.rc \
    init.sku.600ID.PNXR.1.rc \
    init.sku.600ID.PNXR.2.rc \
    init.sku.600ID.rc \
    init.sku.600RU.PNX.rc \
    init.sku.600RU.PNXI.rc \
    init.sku.600RU.PNXR.1.rc \
    init.sku.600RU.PNXR.2.rc \
    init.sku.600RU.rc \
    init.sku.600WW.PNX.rc \
    init.sku.600WW.PNXI.rc \
    init.sku.600WW.PNXR.1.rc \
    init.sku.600WW.PNXR.2.rc \
    init.sku.600WW.rc \
    init.sku.rc \
    init.target.rc \
    init.recovery.qcom.rc \

# GNSS
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/gps/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# Low power Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# Media
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/media/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/telephony_product_privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/telephony_product_privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/telephony_system-ext_privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/telephony_system-ext_privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/wfd_system-ext_privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/wfd_system-ext_privapp-permissions-qti.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Wifi
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/wifi/,$(TARGET_COPY_OUT_VENDOR)/etc/wifi)

# Inherit the proprietary files
$(call inherit-product, vendor/nokia/PNX_sprout/PNX_sprout-vendor.mk)
