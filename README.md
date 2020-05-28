# TWRP device tree for the Samsung Galaxy S10e

Description
-----------

This repository is to build TWRP for the S10e (SM-G970F)

How to build TWRP
-----------------

* Make a workspace:

        mkdir -p ~/twrp/repo
        cd ~/twrp/repo

* Initialize the repo:

        repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <project name="whatawurst/android_device_samsung_beyond0lte" path="device/samsung/beyond0lte" />
        </manifest>

* Sync the repo:

        repo sync

* Extract vendor blobs

        cd device/samsung/beyond0lte
        ./extract-files.sh

* Setup the environment

        export ALLOW_MISSING_DEPENDENCIES=true
        source build/envsetup.sh
        lunch lineage_beyond0lte-userdebug

* Build TWRP

        m -j20 recoveryimage
