#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/huawei/g620s

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    device/huawei/g620s/media/media_profiles_8916.xml:system/etc/media_profiles.xml \
    device/huawei/g620s/media/media_codecs_8916.xml:system/etc/media_codecs.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/huawei/g620s/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/g620s/configs/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    device/huawei/g620s/configs/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    device/huawei/g620s/configs/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    device/huawei/g620s/configs/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    device/huawei/g620s/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    device/huawei/g620s/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    device/huawei/g620s/audio/General_cal.acdb:system/etc/General_cal.acdb \
    device/huawei/g620s/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
    device/huawei/g620s/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    device/huawei/g620s/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    device/huawei/g620s/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    device/huawei/g620s/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb

# Diag cfg
PRODUCT_COPY_FILES += \
    device/huawei/g620s/rootdir/etc/DiagCfg/Diag.cfg:system/etc/DiagCfg/Diag.cfg

# DPM
PRODUCT_COPY_FILES += \
    device/huawei/g620s/rootdir/etc/dpm/fdMgr/fd.conf:system/etc/dpm/fdMgr/fd.conf

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    device/huawei/g620s/configs/sec_config:system/etc/sec_config

# Listen configuration file
PRODUCT_COPY_FILES += \
    device/huawei/g620s/configs/listen_platform_info.xml:system/etc/listen_platform_info.xml

PRODUCT_COPY_FILES += \
    device/huawei/g620s/rootdir/etc/capability.xml:system/etc/capability.xml \
    device/huawei/g620s/rootdir/etc/device_monitor_for_nff.conf:system/etc/device_monitor_for_nff.conf \
    device/huawei/g620s/rootdir/etc/device_state_monitor.conf:system/etc/device_state_monitor.conf \
    device/huawei/g620s/rootdir/etc/globalAutoAdapt-conf.xml:system/etc/globalAutoAdapt-conf.xml \
    device/huawei/g620s/rootdir/etc/globalMatchs-conf.xml:system/etc/globalMatchs-conf.xml \
    device/huawei/g620s/rootdir/etc/qlog-conf.xml:system/etc/qlog-conf.xml \
    device/huawei/g620s/rootdir/etc/renice-loggers.sh:system/etc/renice-loggers.sh \
    device/huawei/g620s/rootdir/etc/virtualNets-conf.xml:system/etc/virtualNets-conf.xml \
    device/huawei/g620s/rootdir/etc/wfdconfig.xml:system/etc/wfdconfig.xml \
    device/huawei/g620s/rootdir/etc/wfdconfigsink.xml:system/etc/wfdconfigsink.xml

PRODUCT_COPY_FILES += \
    device/huawei/g620s/configs/whitelist_appops.xml:system/etc/whitelist_appops.xml

PRODUCT_COPY_FILES += \
    device/huawei/g620s/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/huawei/g620s/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/huawei/g620s/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/huawei/g620s/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Logmask
PRODUCT_COPY_FILES += \
    device/huawei/g620s/rootdir/etc/logmask/default_diag_mask.cfg:system/etc/logmask/default_diag_mask.cfg \
    device/huawei/g620s/rootdir/etc/logmask/dynamic_debug_mask.cfg:system/etc/logmask/dynamic_debug_mask.cfg \
    device/huawei/g620s/rootdir/etc/logmask/qdss.cfg:system/etc/logmask/qdss.cfg

# Nfc
PRODUCT_COPY_FILES += \
    device/huawei/g620s/configs/hardfault.cfg:system/etc/nfc/hardfault.cfg \
    device/huawei/g620s/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/huawei/g620s/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/huawei/g620s/configs/nfc-nci.conf:system/etc/nfc-nci.conf \
    device/huawei/g620s/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Offmode charge
PRODUCT_COPY_FILES += \
    device/huawei/g620s/rootdir/charger:root/charger \
    device/huawei/g620s/rootdir/res/images/720x1280/batt_level_scale.png:root/res/images/720x1280/batt_level_scale.png \
    device/huawei/g620s/rootdir/res/images/720x1280/batt_level_top.png:root/res/images/720x1280/batt_level_top.png \
    device/huawei/g620s/rootdir/res/images/720x1280/bg.png:root/res/images/720x1280/bg.png \
    device/huawei/g620s/rootdir/res/images/720x1280/empty_charge.png:root/res/images/720x1280/empty_charge.png \
    device/huawei/g620s/rootdir/res/images/720x1280/err_charge.png:root/res/images/720x1280/err_charge.png \
    device/huawei/g620s/rootdir/res/images/720x1280/full_charge.png:root/res/images/720x1280/full_charge.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_0.png:root/res/images/720x1280/number_0.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_1.png:root/res/images/720x1280/number_1.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_2.png:root/res/images/720x1280/number_2.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_3.png:root/res/images/720x1280/number_3.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_4.png:root/res/images/720x1280/number_4.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_5.png:root/res/images/720x1280/number_5.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_6.png:root/res/images/720x1280/number_6.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_7.png:root/res/images/720x1280/number_7.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_8.png:root/res/images/720x1280/number_8.png \
    device/huawei/g620s/rootdir/res/images/720x1280/number_9.png:root/res/images/720x1280/number_9.png \
    device/huawei/g620s/rootdir/res/images/720x1280/percent_10.png:root/res/images/720x1280/percent_10.png \
    device/huawei/g620s/rootdir/res/images/720x1280/percent_5.png:root/res/images/720x1280/percent_5.png \
    device/huawei/g620s/rootdir/res/images/720x1280/percent_sign.png:root/res/images/720x1280/percent_sign.png \
    device/huawei/g620s/rootdir/res/images/mmi/fail.png:root/res/images/mmi/fail.png \
    device/huawei/g620s/rootdir/res/images/mmi/pass.png:root/res/images/mmi/pass.png

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# Feature definition files for msm8916
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    com.dsi.ant.antradio_library

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    libaudio-resampler

# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libmm-qcamera

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    libmemalloc \
    memtrack.msm8916 \
    hwcomposer.msm8916 \
    liboverlay \
    libgenlock \
    libqdutils \
    libqdMetaData

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# Flatland
PRODUCT_PACKAGES += \
    flatland

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

#fstab.qcom
PRODUCT_PACKAGES += \
    fstab.qcom

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcompostprocbundle

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Keylayout
PRODUCT_PACKAGES += \
    gpio-keys.kl \
    synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# NFC packages
#PRODUCT_PACKAGES += \
#    NfcNci \
#    Tag \
#    com.android.nfc_extras

#OEM Services library
PRODUCT_PACKAGES += \
    oem-services \
    libsubsystem_control \
    libSubSystemShutdown

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# Prebuilt binary
PRODUCT_PACKAGES += \
    chargelog.sh \
    e2fsck_s \
    healthd \
    huawei_version \
    hw_scsi_switch \
    libqmi_oem_main \
    rmt_oeminfo \
    rmt_storage \
    test_diag \
    test_oeminfo \
    usb_update

# Recovery
PRODUCT_PACKAGES += \
    recoverylog.sh \
    minivold

# Ramdisk
PRODUCT_PACKAGES += \
    init.crda.sh \
    init.qcom.bt.sh \
    hsic.control.bt.sh \
    init.ath3k.bt.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.wifi.sh \
    init.qcom.modem_links.sh \
    init.qcom.rootagent.sh \
    init.qcom.uicc.sh

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.factory.sh \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.mdm.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.audio.sh \
    qca6234-service.sh \
    hcidump.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.uicc.sh \
    init.target.rc \
    ueventd.qcom.rc \
    init.device.rc

#spec service
PRODUCT_PACKAGES += \
    init.qti.carrier.rc

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8916 \
    libcalmodule_akm \
    calmodule.cfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Vold
PRODUCT_PACKAGES += \
    vold.fstab

# Wifi
PRODUCT_PACKAGES += \
    libcurl \
    wcnss_service

PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf

PRODUCT_PACKAGES += \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

#Set default profile to FUT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.logkit.ctrlcode=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

# appops configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    ro.qualcomm.cabl=0 \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so
    
# USB
PRODUCT_PROPERTY_OVERRIDES += \ 
    persist.sys.usb.config=mtp,adb

# model and config device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.model=G620S-L01
    ro.product.name=G620S-L01

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/fsg,/firmware,/persist,/boot

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product-if-exists, vendor/huawei/g620s/g620s-vendor.mk)
