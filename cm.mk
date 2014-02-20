# Boot animation
TARGET_SCREEN_HEIGHT := 1280	
TARGET_SCREEN_WIDTH := 720

# Pull all dictionaries (This makes sure it gets called)
TARGET_USE_KEYBOARD := international

# Call this first so apn list is actually copied
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit AOSP device configuration for ef52l.
$(call inherit-product, device/pantech/ef52l/full_ef52l.mk)

# Inherit some common cmroms stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := IM-A870L
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_BRAND := VEGA
PRODUCT_DEVICE := ef52l
PRODUCT_NAME := cm_ef52l
PRODUCT_CODENAME := VEGA_IMA-870L
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=VEGA_IMA-870L BUILD_FINGERPRINT=google/pantech_ef52l/ef52l:4.1.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="ef52l-user 4.1.2 JDQ39 573038 release-keys"


# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip


