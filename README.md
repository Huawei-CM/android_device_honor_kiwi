**TWRP - Huawei P8 Lite**

This is a device tree for the Huawei P8 Lite (ALE-L04).

Work-in-progress! Known issues:

1. Flashing this causes a bootloop.

**Quick build instructions:**

    . build/envsetup.sh
    lunch cm_alel04-userdebug
    make -j20 recoveryimage
