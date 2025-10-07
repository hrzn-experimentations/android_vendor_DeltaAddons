LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := preinstalled-packages-product-DeltaAddons.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/sysconfig/preinstalled-packages-product-DeltaAddons.xml
LOCAL_SRC_FILES := preinstalled-packages-product-DeltaAddons.xml
include $(BUILD_PREBUILT)

