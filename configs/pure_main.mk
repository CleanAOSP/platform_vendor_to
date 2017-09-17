# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/to/overlay/common

# Inherit prebuilt apps
$(call inherit-product-if-exists, vendor/gapps/prebuilt.mk)

# Use signing keys for only official builds
ifeq ($(OCTOS_BUILD_TYPE),OFFICIAL)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := ../.keys/releasekey
endif

# Main Required Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    LiveWallpapersPicker

# Custom Packages
PRODUCT_PACKAGES += \
    Busybox
