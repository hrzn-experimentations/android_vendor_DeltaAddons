PRODUCT_SOONG_NAMESPACES += \
    vendor/DeltaAddons/microg

PRODUCT_PACKAGES += \
    GmsCore \
    GsfProxy

ifeq ($(TARGET_USES_PLAYSTORE),true)
PRODUCT_PACKAGES += \
    Phonesky
else
PRODUCT_PACKAGES += \
    additional_repos.xml \
    AuroraStore \
    FakeStore
endif
