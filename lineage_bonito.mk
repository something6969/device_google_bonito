# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bonito device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := google
PRODUCT_DEVICE := bonito
PRODUCT_MANUFACTURER := google
PRODUCT_NAME := lineage_bonito
PRODUCT_MODEL := Pixel 3a XL

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := bonito
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="bonito-user 12 SQ1A.220205.002 8010174 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/bonito/bonito:12/SQ1A.220205.002/8010174:user/release-keys
