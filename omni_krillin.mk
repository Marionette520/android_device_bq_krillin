# Inherit device configuration
$(call inherit-product, device/bq/krillin/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := krillin
PRODUCT_NAME := omni_krillin
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := Aquaris E4.5

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=krillin \
    PRODUCT_NAME=krillin
