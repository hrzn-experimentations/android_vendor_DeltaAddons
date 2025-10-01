PRODUCT_SOONG_NAMESPACES += \
    vendor/DeltaAddons/microg

ifeq ($(TARGET_USES_PLAYSTORE),true)
PRODUCT_PACKAGES += \
    Phonesky \
    GmsCore
else
PRODUCT_PACKAGES += \
    additional_repos.xml \
    AuroraStore \
    FakeStore \
    GmsCore
endif
