#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    tp_selftest.sh \
    install-recovery.sh \
    mishow.sh \
    tp_data_collect.sh \

PRODUCT_PACKAGES += \
    fstab.enableswap \
    init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.rc \
    meta_init.project.rc \
    init.ago.rc \
    init.modem.rc \
    init.aee.rc \
    factory_init.rc \
    meta_init.connectivity.rc \
    init.mt6785.rc \
    init.mt6785.usb.rc \
    factory_init.connectivity.rc \
    init.project.rc \
    factory_init.project.rc \
    init.sensor_1_0.rc \
    multi_init.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/begonia/begonia-vendor.mk)
