QCOM_COMMON_PATH := device/qcom/common

TARGET_FWK_SUPPORTS_FULL_VALUEADDS ?= true

ifeq ($(TARGET_FWK_SUPPORTS_FULL_VALUEADDS),true)
# Compatibility matrix
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(QCOM_COMMON_PATH)/vendor_framework_compatibility_matrix.xml

PRODUCT_PROPERTY_OVERRIDES += ro.vendor.qti.va_aosp.support=1
PRODUCT_ODM_PROPERTIES += ro.vendor.qti.va_odm.support=1
endif

# Permissions
PRODUCT_COPY_FILES += \
    $(QCOM_COMMON_PATH)/system/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(QCOM_COMMON_PATH)/system/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# Public Libraries
PRODUCT_COPY_FILES += \
    $(QCOM_COMMON_PATH)/system/public.libraries.system_ext-qti.txt:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/public.libraries-qti.txt

# SECCOMP Extensions
PRODUCT_COPY_FILES += \
    $(QCOM_COMMON_PATH)/vendor/seccomp/codec2.software.ext.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.software.ext.policy \
    $(QCOM_COMMON_PATH)/vendor/seccomp/codec2.vendor.ext.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext.policy \
    $(QCOM_COMMON_PATH)/vendor/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(QCOM_COMMON_PATH)/vendor/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# QTI framework detect
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect \
    libvndfwk_detect_jni.qti.vendor \
    libqti_vndfwk_detect.vendor

# Filesystem
TARGET_FS_CONFIG_GEN += device/qcom/common/config.fs

# Vendor Service Manager
PRODUCT_PACKAGES += \
    vndservicemanager
