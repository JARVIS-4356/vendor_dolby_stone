#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Dolby
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_ODM)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/configs/dolby/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_effects.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sdmmagpie_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_vendor_sdmmagpie_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml

# Dolby VNDK libs
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm/arch-arm-armv7-a-neon/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_foundation-v33.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_foundation-v33.so

# Properties
TARGET_USES_DOLBY := true
PRODUCT_VENDOR_PROPERTIES += \
    PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1 \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.audio.dolby.surround.enable=true \
    persist.vendor.audio_fx.current=dolby \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.enable.mirrorlink=false \
    ro.vendor.product.device.db=OP_DEVICE \
    ro.vendor.product.manufacturer.db=OP_PHONE \
    vendor.product.device=OP_PHONE \
    vendor.product.manufacturer=OPD

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/dolby/sepolicy/vendor

AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(LOCAL_PATH)/vintf/framework_compatibility_matrix_dolby.xml
    
DEVICE_MANIFEST_FILE := \
    $(LOCAL_PATH)/vintf/manifest_dolby.xml

$(call inherit-product, vendor/dolby/dolby-vendor.mk)
