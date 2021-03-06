# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ysl device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := ysl
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_ysl
PRODUCT_MODEL := Redmi S2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := ysl
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="ysl-user 8.1.0 OPM1.171019.011 9.2.21 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/ysl/ysl:8.1.0/OPM1.171019.011/9.2.21:user/release-keys
