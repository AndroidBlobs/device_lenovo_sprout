# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := sprout
PRODUCT_MANUFACTURER := lenovo
PRODUCT_NAME := lineage_sprout
PRODUCT_MODEL := Lenovo S5 Pro

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := sprout
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sprout-user 9 PKQ1.190127.001 11.1.099_191008 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Lenovo/sprout/sprout:9/PKQ1.190127.001/11.1.099_191008:user/release-keys
