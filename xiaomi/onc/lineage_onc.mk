# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from onc device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := onc
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_onc
PRODUCT_MODEL := Redmi 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := onc
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="onc-user 9 PKQ1.181021.001 V10.2.8.0.PFLEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/onc_eea/onc:9/PKQ1.181021.001/V10.2.8.0.PFLEUXM:user/release-keys
