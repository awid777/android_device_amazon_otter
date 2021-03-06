# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_FOLDER := device/amazon/otter

$(call inherit-product, device/amazon/otter-common/common.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

# Hardware HALs
PRODUCT_PACKAGES += \
    hwcomposer.otter \
    lights.otter \
    power.otter \
    audio.primary.otter \
    sensors.otter

# Rootfs
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/fstab.otter:/root/fstab.otter \
    $(DEVICE_FOLDER)/init.omap4430.rc:/root/init.omap4430.rc \
    $(DEVICE_FOLDER)/init.omap4430.usb.rc:/root/init.omap4430.usb.rc

<<<<<<< HEAD
# MAC/SWAP scripts
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/prebuilt/bin/fix-mac.sh:/system/bin/fix-mac.sh \
    $(DEVICE_FOLDER)/prebuilt/bin/swap-check.sh:/system/bin/swap-check.sh \
=======
# Prebuilt system/bin
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/prebuilt/bin/fix-mac.sh:/system/bin/fix-mac.sh \
>>>>>>> origin/cm-10.1
    $(DEVICE_FOLDER)/prebuilt/bin/idme:/system/bin/idme

# Prebuilt system/etc
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/prebuilt/etc/mountd.conf:/system/etc/mountd.conf \
    $(DEVICE_FOLDER)/prebuilt/etc/vold.fstab:/system/etc/vold.fstab \
    $(DEVICE_FOLDER)/prebuilt/etc/firmware/ducati-m3.512MB.bin:/system/etc/firmware/ducati-m3.512MB.bin

# Prebuilt system/lib
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/prebuilt/lib/libidme.so:/system/lib/libidme.so

