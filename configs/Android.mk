# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH:= $(call my-dir)

# IRSC

include $(CLEAR_VARS)
LOCAL_MODULE       := sec_config
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := sec_config
include $(BUILD_PREBUILT)

# Media

include $(CLEAR_VARS)
LOCAL_MODULE       := media_codecs.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := media_codecs.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := media_profiles.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := media_profiles.xml
include $(BUILD_PREBUILT)

# Thermal

include $(CLEAR_VARS)
LOCAL_MODULE       := thermal-engine.conf
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS  := optional
LOCAL_SRC_FILES    := thermal-engine.conf
include $(BUILD_PREBUILT)