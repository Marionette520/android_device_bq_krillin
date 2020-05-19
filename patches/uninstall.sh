#!/bin/sh
cd ../../../..
cd system/core
git checkout -- . && git clean -df
cd ../..
cd frameworks/av
git checkout -- . && git clean -df
cd ../..
cd external/wpa_supplicant_8
git checkout -- . && git clean -df
cd ../..
