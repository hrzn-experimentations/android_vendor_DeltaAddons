DELTA_PATH := vendor/DeltaAddons

PRODUCT_SOONG_NAMESPACES += \
    vendor/DeltaAddons/media

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
    $(DELTA_PATH)/product/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    $(DELTA_PATH)/product/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
endif
