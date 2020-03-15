# Copyright (C) 2008 The Android Open Source Project
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
ANDROID_VERSION_STR := $(PLATFORM_VERSION)
ANDROID_VERSION := $(firstword $(ANDROID_VERSION_STR))

ifeq ($(ANDROID_VERSION), 9)
PRODUCT_COPY_FILES += \
    vendor/nexell/app/svm_daemon/bin/nx_3d_avm_daemon_dbg:$(TARGET_ROOT_OUT)/root/sbin/nx_3d_avm_daemon_dbg \
    vendor/nexell/app/svm_daemon/bin/nx_3d_avm_daemon:$(TARGET_ROOT_OUT)/root/sbin/nx_3d_avm_daemon \
    vendor/nexell/app/svm_daemon/bin/test_capture:$(TARGET_ROOT_OUT)/root/sbin/test_capture \
    vendor/nexell/app/svm_daemon/bin/test_view_rawimage:$(TARGET_ROOT_OUT)/root/sbin/test_view_rawimage

PRODUCT_COPY_FILES += \
    vendor/nexell/app/svm_daemon/lib/android/libnxavm_client_dbg.so:$(TARGET_ROOT_OUT)/system/lib/libnxavm_client_dbg.so \
    vendor/nexell/app/svm_daemon/lib/android/libnxavm_client.so:$(TARGET_ROOT_OUT)/system/lib/libnxavm_client.so


PRODUCT_COPY_FILES += \
    vendor/nexell/app/svm_daemon/data/ui/pgl_128_128_4.rgba:$(TARGET_ROOT_OUT)/root/oem/ui/pgl_128_128_4.rgba \
    vendor/nexell/app/svm_daemon/data/ui/wall.bmp:$(TARGET_ROOT_OUT)/root/oem/ui/wall.bmp

PRODUCT_COPY_FILES += \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_rgb_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_rgb_high.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_rgb_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_rgb_low.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_yuv_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_yuv_high.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_yuv_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_yuv_low.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_yuv_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_yuv_high.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_yuv_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_yuv_low.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_rgb_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_rgb_low.nx3 \
    vendor/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_rgb_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_rgb_high.nx3

PRODUCT_COPY_FILES += \
    vendor/nexell/app/svm_daemon/data/avm/avm_info_topview.data:$(TARGET_COPY_OUT_PRODUCT)/avm/avm_info_topview.data \
    vendor/nexell/app/svm_daemon/data/avm/avm_info_3dview.data:$(TARGET_COPY_OUT_PRODUCT)/avm/avm_info_3dview.data \
    vendor/nexell/app/svm_daemon/data/avm/avm_config.txt:$(TARGET_COPY_OUT_PRODUCT)/avm/avm_config.txt \
    vendor/nexell/app/svm_daemon/data/avm_onecam/avm_info_topview.data:$(TARGET_COPY_OUT_PRODUCT)/avm_onecam/avm_info_topview.data 
else
PRODUCT_COPY_FILES += \
    device/nexell/app/svm_daemon/bin/nx_3d_avm_daemon_dbg:$(TARGET_ROOT_OUT)/root/sbin/nx_3d_avm_daemon_dbg \
    device/nexell/app/svm_daemon/bin/nx_3d_avm_daemon:$(TARGET_ROOT_OUT)/root/sbin/nx_3d_avm_daemon \
    device/nexell/app/svm_daemon/bin/test_capture:$(TARGET_ROOT_OUT)/root/sbin/test_capture \
    device/nexell/app/svm_daemon/bin/test_view_rawimage:$(TARGET_ROOT_OUT)/root/sbin/test_view_rawimage

PRODUCT_COPY_FILES += \
    device/nexell/app/svm_daemon/lib/android/libnxavm_client_dbg.so:$(TARGET_ROOT_OUT)/system/lib/libnxavm_client_dbg.so \
    device/nexell/app/svm_daemon/lib/android/libnxavm_client.so:$(TARGET_ROOT_OUT)/system/lib/libnxavm_client.so


PRODUCT_COPY_FILES += \
    device/nexell/app/svm_daemon/data/ui/pgl_128_128_4.rgba:$(TARGET_ROOT_OUT)/root/oem/ui/pgl_128_128_4.rgba \
    device/nexell/app/svm_daemon/data/ui/wall.bmp:$(TARGET_ROOT_OUT)/root/oem/ui/wall.bmp

PRODUCT_COPY_FILES += \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_rgb_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_rgb_high.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_rgb_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_rgb_low.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_yuv_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_yuv_high.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_01_yuv_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_01_yuv_low.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_yuv_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_yuv_high.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_yuv_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_yuv_low.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_rgb_low.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_rgb_low.nx3 \
    device/nexell/app/svm_daemon/data/3DS/sonata2018/sonata2018_00_rgb_high.nx3:$(TARGET_ROOT_OUT)/root/oem/3DS/sonata2018/sonata2018_00_rgb_high.nx3

PRODUCT_COPY_FILES += \
    device/nexell/app/svm_daemon/data/avm/avm_info_topview.data:$(TARGET_COPY_OUT_PRODUCT)/avm/avm_info_topview.data \
    device/nexell/app/svm_daemon/data/avm/avm_info_3dview.data:$(TARGET_COPY_OUT_PRODUCT)/avm/avm_info_3dview.data \
    device/nexell/app/svm_daemon/data/avm/avm_config.txt:$(TARGET_COPY_OUT_PRODUCT)/avm/avm_config.txt \
    device/nexell/app/svm_daemon/data/avm_onecam/avm_info_topview.data:$(TARGET_COPY_OUT_PRODUCT)/avm_onecam/avm_info_topview.data 
endif
