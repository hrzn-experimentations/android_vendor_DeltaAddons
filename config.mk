DELTA_PATH := vendor/DeltaAddons
PRODUCT_SOONG_NAMESPACES += \
    $(DELTA_PATH)

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles)

## Audio
# Alarms
PRODUCT_COPY_FILES += \
    $(DELTA_PATH)/audio/ringtones/Forest.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Forest.ogg \
    $(DELTA_PATH)/audio/ringtones/Imagine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Imagine.ogg \
    $(DELTA_PATH)/audio/ringtones/ImagineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/ImagineDaycore.ogg \
    $(DELTA_PATH)/audio/ringtones/Inside.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Inside.ogg \
    $(DELTA_PATH)/audio/ringtones/InsideDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/InsideDaycore.ogg \
    $(DELTA_PATH)/audio/ringtones/Shine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Shine.ogg \
    $(DELTA_PATH)/audio/ringtones/ShineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/ShineDaycore.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(DELTA_PATH)/audio/ringtones/Forest.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Forest.ogg \
    $(DELTA_PATH)/audio/ringtones/Imagine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Imagine.ogg \
    $(DELTA_PATH)/audio/ringtones/ImagineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/ImagineDaycore.ogg \
    $(DELTA_PATH)/audio/ringtones/Inside.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Inside.ogg \
    $(DELTA_PATH)/audio/ringtones/InsideDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/InsideDaycore.ogg \
    $(DELTA_PATH)/audio/ringtones/Shine.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Shine.ogg \
    $(DELTA_PATH)/audio/ringtones/ShineDaycore.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/ShineDaycore.ogg

## Packages
PRODUCT_PACKAGES += \
    AnotherWidget \
    Fennec \
    MaterialFiles \
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
