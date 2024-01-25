LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),PNX_sprout)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
