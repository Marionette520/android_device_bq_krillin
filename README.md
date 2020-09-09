Aquaris E4.5 - LineageOS 14.1
==============

### Full Compilation guide:

     * repo init -u git://github.com/LineageOS/android.git -b cm-14.1

     * repo sync --force-sync 

     * . build/envsetup.sh

     * lunch lineage_krillin-userdebug

### Recovery Compilation (TWRP Variant):

  LineageOS root / source directory:

     * git clone https://github.com/LineageOS/android_external_busybox external/busybox
     * git clone https://github.com/OmniROM/android_bootable_recovery bootable/recovery-twrp
     * source build/envsetup.sh
     * lunch
     * lineage_krillin-eng
     * export WITH_TWRP=true
     * mka recoveryimage

### Thanks to (In alphabetichal order):

 * Assusdan
 * Deckersu
 * kra1o5
 * MagnusALM
 * Pablito2020
 * sultanxda
 * Varun Chitre
 * Vo-1
 * Xcore
 * Zormax

About device:
![krillin](https://github.com/jmpfbmx/device_pics/blob/master/Krillin.jpg)
=========================================================
Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1,3Ghz Quad-Core ARM Cortex-A7 
CHIPSET | Mediatek MT6582 1,3 GHz
GPU     | MediaTek ARM Mali-400 MP2 500Mhz 
Kernel  | 3.8.108
Memory  | 1 GB
Shipped Android Version | Android 4.4
Storage | 8GB
MicroSD | Yes
Battery | LiPo 2150 mAh (non-removable)
Display | 540 x 960 pixels, 4.5" HD
Rear Camera  | 8.0 MP
Front Camera | 5.0 MP
