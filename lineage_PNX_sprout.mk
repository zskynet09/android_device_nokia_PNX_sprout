# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from PNX_sprout device
$(call inherit-product, device/nokia/PNX_sprout/device.mk)

PRODUCT_DEVICE := PNX_sprout
PRODUCT_NAME := lineage_PNX_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8.1
PRODUCT_MANUFACTURER := HMD Global

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Phoenix_00WW-user 11 RKQ1.200906.002 00WW_6_21F release-keys"

BUILD_FINGERPRINT := Nokia/Phoenix_00WW/PNX_sprout:11/RKQ1.200906.002/00WW_6_21F:user/release-keys
