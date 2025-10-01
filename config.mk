## Modules
ifeq ($(TARGET_SHIP_JAMESDSP),true)
include vendor/DeltaAddons/config/jamesdsp.mk
endif
ifeq ($(WITH_MICROG),true)
include vendor/DeltaAddons/config/microg.mk
endif
include vendor/DeltaAddons/config/media.mk
include vendor/DeltaAddons/config/packages.mk
