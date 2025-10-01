JAMESDSP_PATH := vendor/DeltaAddons/jamesdsp

PRODUCT_SOONG_NAMESPACES += \
   $(JAMESDSP_PATH)

ifneq ($(filter sailfish marlin walleye taimen blueline crosshatch sargo bonito flame coral sunfish bramble redfin barbet oriole raven bluejay panther cheetah lynx tangorpro felix shiba husky akita tokay caiman komodo comet tegu frankel blazer mustang, $(LINEAGE_BUILD)),)
BOARD_VENDOR_SEPOLICY_DIRS += $(JAMESDSP_PATH)/sepolicy/jamesdsp_pixel
else
BOARD_VENDOR_SEPOLICY_DIRS += $(JAMESDSP_PATH)/sepolicy/jamesdsp
endif

PRODUCT_PACKAGES += \
    libjamesdsp \
    JamesDSPManager
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/JamesDSPManager/JamesDSPManager.apk
