DEVICE_PATH := device/asus/X01BD
BOARD_VENDOR := asus

# Security patch level
VENDOR_SECURITY_PATCH := =2019-03-01

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

-include vendor/asus/X01BD/BoardConfigVendor.mk