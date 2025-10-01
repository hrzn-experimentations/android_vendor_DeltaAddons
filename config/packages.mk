PRODUCT_SOONG_NAMESPACES += \
    vendor/DeltaAddons/packages

PRODUCT_PACKAGES += \
    DeltaAddonsBackgrounds \
    Fennec \
    MaterialFiles \
    NeoStore \
    Shizuku \
    preinstalled-packages-product-DeltaAddons.xml

ifneq ($(TARGET_SHIP_METRO),false)
PRODUCT_PACKAGES += \
    Metro
endif

ifeq ($(TARGET_SHIP_YT_CLIENTS),true)
PRODUCT_PACKAGES += \
    LibreTube \
    Metrolist \
    Seal
endif

ifeq ($(WITH_GMS),false)
ifneq ($(WITH_MICROG),true)
PRODUCT_PACKAGES += \
    AuroraStore
endif
endif
