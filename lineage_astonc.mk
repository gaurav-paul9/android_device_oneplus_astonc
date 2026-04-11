#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from astonc device
$(call inherit-product, device/oneplus/astonc/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionOS-Specific Flags
AXION_MAINTAINER := Gaurav_Paul
AXION_PROCESSOR := Snapdragon_8_Gen_2
PRODUCT_NO_CAMERA:= false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_EPPE := true
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_PREBUILT_BCR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_AXFX := true

# Define rear camera specs
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 16

# Flashlght_strength
TORCH_STR_SUPPORTED := true

# Charging
BYPASS_CHARGE_SUPPORTED ?= true
BYPASS_CHARGE_TOGGLE_PATH ?= /sys/class/power_supply/battery/input_suspend
BYPASS_CHARGE_LEVEL_PATH ?= /sys/devices/platform/google,charger/charge_stop_level

# Blur
TARGET_ENABLE_BLUR := true

#ScrollOptimizer
persist.sys.perf.scroll_opt = true
persist.sys.perf.scroll_opt.heavy_app = 2

PRODUCT_NAME := lineage_astonc
PRODUCT_DEVICE := astonc
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJE110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1769051856495 release-keys" \
    BuildFingerprint=OnePlus/PJE110/OP5CF9L1:16/TP1A.220905.001/U.33c6f5d-1187a86-1187a84:user/release-keys \
    DeviceName=OP5CF9L1 \
    DeviceProduct=PJE110 \
    SystemDevice=OP5CF9L1 \
    SystemName=PJE110
