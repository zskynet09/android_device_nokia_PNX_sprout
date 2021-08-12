# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Device Stuff
$(call inherit-product, device/nokia/Phoenix/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Phoenix
PRODUCT_DEVICE := Phoenix
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8.1
PRODUCT_MANUFACTURER := HMD Global

BUILD_FINGERPRINT := "Nokia/Phoenix_00WW/PNX_sprout:11/RKQ1.200906.002/00WW_6_21F:user/release-key"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PNX_00WW_FIH-user 11 00WW_6_21F 00WW_6_21F release-keys" \
    PRODUCT_NAME="Phoenix_00WW" \
    PRODUCT_DEVICE="PNX_sprout"

PRODUCT_GMS_CLIENTID_BASE := android-nokia
