#Version of the ROM
OCTOS_CODENAME := CONFIDENTIAL
OCTOS_REVISION := oreo

ifndef OCTOS_BUILDTYPE
  OCTOS_BUILDTYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst octos_,,$(TARGET_PRODUCT_SHORT))

OCTOS_VERSION := $(OCTOS_REVISION)-$(OCTOS_CODENAME)-$(OCTOS_BUILDTYPE)-$(TARGET_PRODUCT_SHORT)-$(shell date -u +%Y%m%d-%H%M)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID="$(BUILD_ID)-$(shell whoami)@$(shell hostname)"

# Apply it to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=OctOS-$(OCTOS_VERSION) \
    ro.octos.version=$(OCTOS_VERSION) \
    ro.romstats.url=https://stats.teamoctos.com \
    ro.romstats.name=OctOS \
    ro.romstats.version=$(OCTOS_VERSION)
