#
# Copyright (C) 2016 The CyanogenMod Project
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

# Set LOCAL_PATH
LOCAL_PATH := device/bq/krillin

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from krillin device
$(call inherit-product, device/bq/krillin/device.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Inherit some common LineageOS stuff.
CM_BUILD :=krillin
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := lineage_krillin
PRODUCT_DEVICE :=krillin
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris E4.5

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_DEVICE="krillin"

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=7.1.2/MRA58M/2419427:user/release-keys \
    PRIVATE_BUILD_DESC="krillin-user 7.1.2 MRA58M 2419427 release-keys"
