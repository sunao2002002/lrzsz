LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	lib/long-options.c \
	lib/xstrtol.c \
	lib/xstrtoul.c \
	lib/error.c 
LOCAL_MODULE := libzmodem
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_CFLAGS := -DHAVE_CONFIG_H
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	src/lrz.c \
	src/timing.c \
	src/zperr.c \
	src/zreadline.c \
	src/crctab.c \
	src/rbsb.c \
	src/zm.c \
	src/protname.c \
	src/tcp.c \
	src/lsyslog.c \
	src/canit.c 


LOCAL_MODULE := lrz
LOCAL_MODULE_TAGS := optional tests
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/intl 

LOCAL_STATIC_LIBRARIES := libc \
	libzmodem 
LOCAL_CFLAGS := -DNFGVMIN -DHAVE_CONFIG_H -DLOCALEDIR=\"/system/etc/locale/\"
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	src/lsz.c \
	src/timing.c \
	src/zperr.c \
	src/zreadline.c \
	src/crctab.c \
	src/rbsb.c \
	src/zm.c \
	src/protname.c \
	src/tcp.c \
	src/lsyslog.c \
	src/canit.c 


LOCAL_MODULE := lsz
LOCAL_MODULE_TAGS := optional tests
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/intl 

LOCAL_STATIC_LIBRARIES := libc \
	libzmodem 
LOCAL_CFLAGS := -DNFGVMIN -DHAVE_CONFIG_H -DLOCALEDIR=\"/system/etc/locale/\"
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

