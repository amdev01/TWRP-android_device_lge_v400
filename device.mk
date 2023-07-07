LOCAL_PATH := device/lge/v410

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/v410/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/fstab.e7:root/fstab.e7

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := v410
PRODUCT_BRAND := LGE
