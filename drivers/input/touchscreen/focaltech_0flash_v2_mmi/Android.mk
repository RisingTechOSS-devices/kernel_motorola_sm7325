DLKM_DIR := motorola/kernel/modules
LOCAL_PATH := $(call my-dir)

ifneq ($(FOCALTECH_TOUCH_IC_NAME),)
	KBUILD_OPTIONS += CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=$(FOCALTECH_TOUCH_IC_NAME)
else
	KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8726
endif

ifneq ($(BOARD_USES_DOUBLE_TAP),)
	KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_0FLASH_MMI_ENABLE_DOUBLE_TAP=y
endif

ifeq ($(BOARD_USES_DOUBLE_TAP_CTRL),true)
	KBUILD_OPTIONS += CONFIG_BOARD_USES_DOUBLE_TAP_CTRL=y
endif

ifneq ($(MOTO_PANEL_CHECK_TOUCH_STATE),)
        KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_0FLASH_MMI_NOTIFY_TOUCH_STATE=y
endif

ifneq ($(MOTO_PANEL_CHECK_TOUCH_STATE_V2),)
	KBUILD_OPTIONS += CONFIG_INPUT_FOCALTECH_0FLASH_MMI_NOTIFY_TOUCH_STATE=y
endif

ifneq ($(FOCALTECH_ESDCHECK_ENABLE),)
	KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_ESD_EN=y
endif

ifneq ($(FOCALTECH_DEBUG_ENABLE),)
	KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_DEBUG_EN=y
endif

ifneq ($(BOARD_USES_PANEL_NOTIFICATIONS),)
	KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_PANEL_NOTIFICATIONS=y
endif

ifneq ($(FOCALTECH_PINCTRL_ENABLE),)
	KERNEL_CFLAGS += CONFIG_INPUT_FOCALTECH_PINCTRL_EN=y
endif

ifeq ($(TOUCHSCREEN_LAST_TIME),true)
	KERNEL_CFLAGS += CONFIG_FOCALTECH_LAST_TIME=y
	KBUILD_OPTIONS += CONFIG_FOCALTECH_LAST_TIME=y
endif

ifeq ($(DRM_PANEL_EVENT_NOTIFICATIONS),true)
	KBUILD_OPTIONS += CONFIG_DRM_PANEL_EVENT_NOTIFICATIONS=y
endif

ifeq ($(FOCALTECH_MULTI_FW_ENABLE),true)
	KBUILD_OPTIONS += CONFIG_FTS_MULTI_FW=y
endif

include $(CLEAR_VARS)
LOCAL_MODULE := focaltech_0flash_v2_mmi.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
ifneq ($(findstring touchscreen_mmi.ko,$(BOARD_VENDOR_KERNEL_MODULES)),)
	KBUILD_OPTIONS += CONFIG_INPUT_TOUCHSCREEN_MMI=y
	LOCAL_ADDITIONAL_DEPENDENCIES += $(KERNEL_MODULES_OUT)/touchscreen_mmi.ko
endif

ifneq ($(BOARD_USES_DOUBLE_TAP),)
LOCAL_ADDITIONAL_DEPENDENCIES += $(KERNEL_MODULES_OUT)/sensors_class.ko
endif
ifneq ($(MOTO_PANEL_CHECK_TOUCH_STATE_V2),)
	LOCAL_ADDITIONAL_DEPENDENCIES += $(KERNEL_MODULES_OUT)/msm_drm.ko
endif
KBUILD_OPTIONS_GKI += GKI_OBJ_MODULE_DIR=gki
KBUILD_OPTIONS_GKI += MODULE_KERNEL_VERSION=$(TARGET_KERNEL_VERSION)
include $(DLKM_DIR)/AndroidKernelModule.mk
