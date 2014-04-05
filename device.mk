#
# Copyright (C) 2011 The Android Open Source Project
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
#

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef52l/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/ramdisk/init.rc:root/init.rc \
    device/pantech/ef52l/ramdisk/init_storage.rc:root/init_storage.rc \
    device/pantech/ef52l/ramdisk/init.usb.rc:root/init.usb.rc \
    device/pantech/ef52l/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/pantech/ef52l/ramdisk/init.target.rc:root/init.target.rc \
    device/pantech/ef52l/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/pantech/ef52l/ramdisk/init.pantech.usb.rc:root/init.pantech.usb.rc \
    device/pantech/ef52l/ramdisk/init.trace.rc:root/init.trace.rc \
    device/pantech/ef52l/ramdisk/ueventd.rc:root/ueventd.rc \
device/pantech/ef52l/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/pantech/ef52l/ramdisk/initlogo.rle:root/initlogo.rle \
    device/pantech/ef52l/ramdisk/poweroff_in.rle:root/poweroff_in.rle

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/pantech/ef52l/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/pantech/ef52l/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/pantech/ef52l/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/pantech/ef52l/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/pantech/ef52l/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/pantech/ef52l/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/pantech/ef52l/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# MSM8960/MPQ8064 firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/pantech/ef52l/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/pantech/ef52l/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/pantech/ef52l/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    device/pantech/ef52l/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/pantech/ef52l/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/pantech/ef52l/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/pantech/ef52l/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    device/pantech/ef52l/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    device/pantech/ef52l/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    device/pantech/ef52l/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    device/pantech/ef52l/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    device/pantech/ef52l/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/pantech/ef52l/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf \
    device/pantech/ef52l/firmware/cyttsp_8064_mtp.hex:/system/etc/firmware/cyttsp_8064_mtp.hex \
    device/pantech/ef52l/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# GPS libs
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/gps/libgps.utils.so:/system/lib/libgps.utils.so \
    device/pantech/ef52l/gps/libloc_adapter.so:/system/lib/libloc_adapter.so \
    device/pantech/ef52l/gps/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/pantech/ef52l/gps/libloc_eng.so:/system/lib/libloc_eng.so \
    device/pantech/ef52l/gps/libloc_ext.so:/system/lib/libloc_ext.so \
    device/pantech/ef52l/gps/gps.default.so:/system/lib/hw/gps.default.so

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/pantech/ef52l/configs/media_codecs.xml:system/etc/media_codecs.xml

# vold config
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/firmware/prima.bin:/system/etc/firmware/wlan/prima/prima.bin \
    device/pantech/ef52l/firmware/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/pantech/ef52l/firmware/WCNSS_qcom_cfg_orgi.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_orgi.ini \
    device/pantech/ef52l/firmware/WCNSS_qcom_cfg_trptis.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_trptis.ini \
    device/pantech/ef52l/firmware/WCNSS_qcom_cfg_trptis.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/pantech/ef52l/firmware/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Kernel modules
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/modules/wlan.ko:/system/lib/modules/wlan.ko \
    device/pantech/ef52l/modules/prima_wlan.ko:/system/lib/modules/prima/prima_wlan.ko

# Nfc lib
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/prebuilt/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so

# thermald config
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/configs/thermald.conf:/system/etc/thermald.conf

# Audio effects
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/configs/audio_effects.conf:system/etc/audio_effects.conf \
    device/pantech/ef52l/configs/audio_policy.conf:system/etc/audio_policy.conf

# Audio firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/firmware/wcd9310_anc.bin:/system/etc/firmware/wcd9310/wcd9310_anc.bin \
    device/pantech/ef52l/firmware/wcd9310_mbhc.bin:/system/etc/firmware/wcd9310/wcd9310_mbhc.bin

# DSP
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_2x_auxpcm:/system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3:/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_auxpcm:/system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:/system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm \
	device/pantech/ef52l/dsp/snd_soc_msm/snd_soc_msm_Taiko:/system/etc/snd_soc_msm/snd_soc_msm_Taiko

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/pantech/ef52l/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/pantech/ef52l/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/pantech/ef52l/idc/qwerty.idc:system/usr/idc/qwerty.idc

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.a2dp.default \
    libalsa-intf \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.qcom

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# hostapd
PRODUCT_PACKAGES += \
    hostapd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef52l/ef52l-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
