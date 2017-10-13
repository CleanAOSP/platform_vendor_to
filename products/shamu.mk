# Inherit common product files.
# Include pure telephony configuration
include vendor/to/configs/pure_phone.mk

$(call inherit-product-if-exists, vendor/moto/shamu/device-vendor.mk)

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Override AOSP build properties
PRODUCT_NAME := shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/NGI55D/4298276:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 8.0.0 OPR6.170623.019 4299446 release-keys"
