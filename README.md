# LineageOS device tree for the Samsung Galaxy S10e

Description
-----------

This repository is to build LineageOS for the S10e (SM-G970F)

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/lineageos/repo
        cd ~/lineageos/repo

* Initialize the repo:

        repo init -u git://github.com/LineageOS/android.git -b lineage-17.1

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

        source build/envsetup.sh
        lunch lineage_beyond0lte-userdebug

* Build LineageOS

        m -j20 bacon
