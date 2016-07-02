# Release name
PRODUCT_RELEASE_NAME := SM-A800

# Inherit device configuration
$(call inherit-product, device/samsung/a8eltezh/device_a8eltezh.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a8eltezh
PRODUCT_NAME := omni_a8eltezh
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-A800
PRODUCT_CHARACTERISTICS := phone
