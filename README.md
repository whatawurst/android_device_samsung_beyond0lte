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
            <project name="whatawurst/android_device_samsung_exynos9820-common" path="device/samsung/exynos9820-common" remote="github" />
            <project name="whatawurst/android_kernel_samsung_exynos9820" path="kernel/samsung/exynos9820" remote="github" />
            <project name="whatawurst/android_vendor_samsung_beyond0lte" path="vendor/samsung/beyond0lte" remote="github" />
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
