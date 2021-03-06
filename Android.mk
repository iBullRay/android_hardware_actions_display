#
# Copyright (C) 2012 Actions-Semi, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Display driver for ATM702X
ifeq ($(strip $(BOARD_HAVE_ACTIONS_DISPLAY)), true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	displayengine.cpp

LOCAL_SHARED_LIBRARIES := liblog libcutils

LOCAL_C_INCLUDES += \
	device/ainol/gs702a-common/includes/

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := displayengine.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
