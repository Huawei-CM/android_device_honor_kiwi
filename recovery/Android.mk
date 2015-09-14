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

ifeq ($(TARGET_DEVICE),alel04)

LOCAL_PATH := $(call my-dir)

ifeq ($(RECOVERY_VARIANT),twrp)

TWRP_VENDOR_LIBS := libQSEEComAPI.so
$(TWRP_VENDOR_LIBS): $(LOCAL_INSTALLED_MODULE)
	@echo "Decryption library for TWRP: $@"
	@mkdir -p $(dir $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib64/$@)
	@rm -rf $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib64/$@
	$(hide) cp vendor/huawei/alel04/proprietary/vendor/lib64/$(notdir $@) $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib64/$@

endif

endif	