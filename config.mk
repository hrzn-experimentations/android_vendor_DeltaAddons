LOCAL_PATH := $(call my-dir)
DELTA_PATH := vendor/DeltaAddons

PRODUCT_SOONG_NAMESPACES += \
    $(DELTA_PATH)

## Modules
# microG
include vendor/DeltaAddons/config/microg.mk

# JamesDSP
ifeq ($(TARGET_SHIP_JAMESDSP),true)
include vendor/DeltaAddons/config/jamesdsp.mk
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
endif

## Packages
# microG
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

# Replacement apps
PRODUCT_PACKAGES += \
    documentsuiOverlay \
    DeltaAddonsBackgrounds \
    Fennec \
    MaterialFiles \
    NeoStore

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

## Custom ringtones
# Alarms
PRODUCT_COPY_FILES += \
    $(DELTA_PATH)/product/media/audio/ringtones/Forest.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Forest.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/Imagine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Imagine.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/ImagineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/ImagineDaycore.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/Inside.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Inside.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/InsideDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/InsideDaycore.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/Shine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Shine.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/ShineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/ShineDaycore.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(DELTA_PATH)/product/media/audio/ringtones/Forest.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Forest.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/Imagine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Imagine.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/ImagineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/ImagineDaycore.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/Inside.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Inside.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/InsideDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/InsideDaycore.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/Shine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Shine.ogg \
    $(DELTA_PATH)/product/media/audio/ringtones/ShineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/ShineDaycore.ogg

# Props for default ringtones
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Shine.ogg \
    ro.config.notification_sound=Voila.ogg \
    ro.config.alarm_alert=ShineDaycore.ogg

## Google monet bootanimation
ifeq ($(TARGET_SHIP_MONET_BOOTANIMATION),true)
PRODUCT_COPY_FILES += \
    $(DELTA_PATH)/product/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
