$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/alel04/alel04-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/alel04/overlay

LOCAL_PATH := device/huawei/alel04
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/alel04/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/etc/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/recovery/etc/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/etc/init.qti.carrier.rc:root/init.qti.carrier.rc \
    $(LOCAL_PATH)/recovery/etc/init.target.rc:root/init.target.rc

# Off-mode charging
PRODUCT_PACKAGES += \
    charge \
    offmode_charging_res_images

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_alel04
PRODUCT_DEVICE := alel04
