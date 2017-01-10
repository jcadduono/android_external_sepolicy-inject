LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := sepolicy-inject
LOCAL_MODULE_TAGS := optional
#LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_STATIC_LIBRARIES := libc libcutils libselinux libsepol-N
LOCAL_STATIC_LIBRARIES := libselinux libsepol
LOCAL_SRC_FILES := sepolicy-inject.c
LOCAL_C_INCLUDES := external/libselinux/include external/selinux/libsepol/include
LOCAL_CFLAGS += -std=gnu89 -Os
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := sepolicy-inject
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libselinux libsepol
LOCAL_SRC_FILES := sepolicy-inject.c
LOCAL_C_INCLUDES := external/libselinux/include external/selinux/libsepol/include
LOCAL_CFLAGS += -std=gnu89 -Os
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := sepolicy-inject-N
LOCAL_MODULE_TAGS := optional
#LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_STATIC_LIBRARIES := libc libcutils libselinux libsepol-N
LOCAL_STATIC_LIBRARIES := libselinux libsepol-N
LOCAL_SRC_FILES := sepolicy-inject.c
LOCAL_C_INCLUDES := external/libselinux/include $(LOCAL_PATH)/libsepol-N/include
LOCAL_CFLAGS += -std=gnu89 -Os
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := sepolicy-inject-N
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libselinux libsepol-N
LOCAL_SRC_FILES := sepolicy-inject.c
LOCAL_C_INCLUDES := external/libselinux/include $(LOCAL_PATH)/libsepol-N/include
LOCAL_CFLAGS += -std=gnu89 -Os
include $(BUILD_HOST_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
