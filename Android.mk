LOCAL_PATH := $(call my-dir)

ifneq ($(filter Phoenix,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
