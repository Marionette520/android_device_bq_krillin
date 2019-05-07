#!/bin/bash
cd ../../../..
cd system/core
git apply -v ../../device/bq/krillin/patches/surfaceflinger.patch
git apply -v ../../device/bq/krillin/patches/ril-daemon-mtk-re.patch
cd ../..
cd frameworks/av
git apply -v ../../device/bq/krillin/patches/fix_wvm.patch
git apply -v ../../device/bq/krillin/patches/capture.patch
git apply -v ../../device/bq/krillin/patches/encoders_n.patch
git apply -v ../../device/bq/krillin/patches/mtk_color_support.patch
git apply -v ../../device/bq/krillin/patches/SoftEncoder.patch
cd ../..
cd external/wpa_supplicant_8
git apply -v ../../device/bq/krillin/patches/wpa_supplicant_8.patch
cd ../..
