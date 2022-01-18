# Add qtidisplay to soong config namespaces
SOONG_CONFIG_NAMESPACES += qtidisplay

# Add supported variables to qtidisplay config
SOONG_CONFIG_qtidisplay += \
    drmpp \
    headless \
    llvmsa \
    gralloc4 \
    default

# Set default values for qtidisplay config
SOONG_CONFIG_qtidisplay_drmpp ?= true
SOONG_CONFIG_qtidisplay_headless ?= false
SOONG_CONFIG_qtidisplay_llvmsa ?= false
SOONG_CONFIG_qtidisplay_gralloc4 ?= true
SOONG_CONFIG_qtidisplay_default ?= true

# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS += msm8998 sdm660 sdm845 sm6125 sm6350 sm8150 sm8250 sm8350 holi trinket bengal

# List of targets that use video hw
MSM_VIDC_TARGET_LIST := msm8998 sdm660 sdm845 sm6125 sm6350 sm8150 sm8250 sm8350 holi trinket bengal

# List of targets that use master side content protection
MASTER_SIDE_CP_TARGET_LIST := msm8998 sdm660 sdm845 sm6125 sm6350 sm8150 sm8250 sm8350 holi trinket bengal

QCOM_MEDIA_ROOT := vendor/qcom/opensource/media/$(qcom_platform)

OMX_VIDEO_PATH := mm-video-v4l2

TARGET_KERNEL_VERSION := $(KERNEL_VERSION)

include device/qcom/common/utils.mk

