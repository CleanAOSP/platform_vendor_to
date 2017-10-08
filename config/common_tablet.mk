# Common settings and files
-include vendor/to/config/common.mk

# Add tablet overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/to/overlay/common_tablet

PRODUCT_CHARACTERISTICS := tablet
