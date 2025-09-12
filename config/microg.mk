PRODUCT_PACKAGES += \
	GmsCore \
	GsfProxy

# Adds a flag for enabling regular playstore cause some people prefer it
ifeq ($(TARGET_USES_PLAYSTORE),true)
PRODUCT_PACKAGES += \
	Phonesky
else
PRODUCT_PACKAGES += \
	additional_repos.xml \
	FakeStore
endif
