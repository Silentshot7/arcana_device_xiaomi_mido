#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/mido/device.mk)

# Inherit some common Arcane stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit some comon nothing stuff
$(call inherit-product, vendor/nothing/config.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := aosp_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

#Arcane Flags
TARGET_BOOT_ANIMATION_RES := 1080
ARCANA_DEVICE := Mido
ARCANA_OFFICIAL := false
ARCANA_MAINTAINER := Silentshot7
WITH_GAPPS := true
TARGET_SUPPORTS_BLUR := true
PREBUILT_LAWNCHAIR := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
COPY_APN_SYSTEM := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NOW_PLAYING := true
USE_PIXEL_CHARGER_IMAGES := true

#Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mido-user $(PLATFORM_VERSION) $(BUILD_ID) $(shell date -u +%s) release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/mido/mido:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date -u +%H%M):user/release-keys"
