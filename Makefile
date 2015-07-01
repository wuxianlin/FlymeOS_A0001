# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# The value decides which base device should choose for patchall and upgrade.
# You can configure the property according to your device.
# The default value is base.
# Support values: base, base_cm, base_mt6592 and other devices in the future.
#-----------------------------------------------------------------------------
#BASE := base_cm

##############################################################################
# The value is used for resource adapter with the aapt tool.
# It depends on the device's resolution.
# The default value is hdpi.
#-----------------------------------------------------------------------------
DENSITY := xxhdpi

##############################################################################
# The value is used to config the bootanimation.
# It depends on the device's resolution, such as 480x854, 540x960, 720x1280, 1080x1920.
# The default value is nothing.
#-----------------------------------------------------------------------------
RESOLUTION := 1080x1920

##############################################################################
# The value decides whether use prebuilt image or pack from the BOOT or RECOVERY directory in the vendor directory.
# Support values: boot, recovery or nothing.
# The default value is nothing.
# When the value is boot or recovery, the system of build will pack boot.img or recovery.img
# from the BOOT or vendor RECOVERY in the vendor directory which might contain your changes.
# When the value is nothing, the system of build will check boot.img or recovery.img in the project root directory.
# If the boot.img or recovery.img exists, the system of build will use a prebuilt boot.img or recovery.img.
# If the boot.img or recovery.img doesn't exists, the system of build will do nothing.
#-----------------------------------------------------------------------------
vendor_modify_images := boot

##############################################################################
# The value decides the directory which you want to remove in the vendor directory for the ota package.
# The default value is app or pri-app which not need to configure.
# You can configure the directory name which relative to the vendor/system directory.
#-----------------------------------------------------------------------------
#vendor_remove_dirs := vendor/operator/app

##############################################################################
# The value decides the file which you want to remove in the vendor directory for the ota package.
# The default value is nothing.
# You can configure the file name which relative to the vendor/system directory.
#-----------------------------------------------------------------------------
#vendor_remove_files := bin/zchgd

##############################################################################
# The value decides the vendor apk which you want to save in the vendor directory for the ota package.
# The default value is Bluetooth.
# You can configure the apk name in the vendor/system/app or vendor/system/pri-app directory.
#-----------------------------------------------------------------------------
vendor_saved_apps := AntHalService Bluetooth BluetoothExt btmultisim com.qualcomm.qti.services.secureui fastdormancy \
                     InterfacePermissions NetworkSetting NfceeService_65T NfcNci QComQMIPermissions \
                     QtiBackupAgent SdCardService Stk TimeService TSM2Service WfdService com.qualcomm.location \
                     KeyChain HTMLViewer UserDictionaryProvider BackupRestoreConfirmation \
                     FusedLocation PrintSpooler SharedStorageBackup  ExternalStorageProvider InputDevices \
                     ProxyHandler Shell DefaultContainerService

##############################################################################
# The value decides which vendor apk you want to modify.
# The modify jar will build from the directory named the vendor apk name in the current project root directory.
# eg: vendor_modify_apps := FMRadio
# You need ro decode FMRadio.apk to the project directory(use apktool d FMRadio.apk) first,
# and then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
#vendor_modify_apps := FMRadio

##############################################################################
# The value decides which vendor jar you want to modify.
# The modify jar will build from the *.jar.out directory in the current project root directory.
# eg: vendor_modify_jars := android.policy
# You need to decode android.policy.jar to the project directory (use apktool d android.policy.jar) first,
# and then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := android.policy framework services telephony-common

##############################################################################
# The value decides which board system directory you want to save.
# The default value is nothing.
# You can configure the board system directory path which relative to the system directory in the board release.
#-----------------------------------------------------------------------------
#board_saved_dirs := media/audio/ui

##############################################################################
# The value decides which board system file you want to save.
# The default value is nothing.
# You can configure the board system file path which relative to the system directory in the board release.
#-----------------------------------------------------------------------------
board_saved_files := lib/libsqlite.so lib/libwebviewchromium.so

##############################################################################
# The value decides which board system apk you want to remove.
# The default value is nothing.
# You can configure the board system apk name in the value.
#-----------------------------------------------------------------------------
#board_remove_apps := LogReport

##############################################################################
# The value decides which apk you want to modify, when the apk is based on the board system apk.
# The default value is Phone.
# You can configure the board system apk name in the value.
# You can modify the apk with the smali.part file or other method.
# You may need to check if the apk in the BOARD_MODIFY_RESID_APPS(you can see it in build/configs/board_default.mk).
# If in, you may need to change the resource id to "#type@name#t" or "#type@name#a" by the command idtoname.
# The command idtoname how to use: first use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res",
# and then use "idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali"(XXXX is the directory where you decode board system apk).
#-----------------------------------------------------------------------------
#board_modify_apps := SystemUI

##############################################################################
# The value decides which jar you want to modify, when the jar is based on the board framework jar.
# The default value is nothing.
# You can modify the jar with the smali.part file or other method.
# You may need to check if the jar in the BOARD_MODIFY_RESID_APPS(you can see it in build/configs/board_default.mk).
# If in, you may need to change the resource id to "#type@name#t" or "#type@name#a" by the command idtoname.
# The command idtoname how to use: first use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res",
# and then use "idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali"(XXXX is the directory where you decode board system jar).
#-----------------------------------------------------------------------------
#board_modify_jars := android.policy

##############################################################################
# The value decides which property you will override in the build.prop.
# The default value is nothing.
# You can add the property name in the value from the build.prop.
#-----------------------------------------------------------------------------

# The property decide whether hide the soft mainkeys.
# If 1, hide the soft mainkeys. If 0, display the soft mainkeys.
# You should configure the property according to your device.
#override_property += \
#    qemu.hw.mainkeys=0


# The property decide your ID on the backend server which statistical data for your device.
# The default value is FlymeRomer.
# You should configure the property according to your ID, ie, replace "FlymeRomer" with your ID.
override_property += \
    ro.flyme.romer=wuxianlin

##############################################################################
# The value decides which property you will remove from the build.prop.
# The default value is nothing.
# You can add the property name in the value from the build.prop.
#-----------------------------------------------------------------------------
# remove_property += \
#     dev.defaultwallpaper

##############################################################################
# Defines whether uses assertions in /META-INF/com/google/android/updater-script of the OTA package.
# Assertions is used to verify the validity of the OTA package.
# Set it to be false when you want to escape the verification.
# Default: true
#-----------------------------------------------------------------------------
#USE_ASSERTIONS_IN_UPDATER_SCRIPT := false

##############################################################################
# Defines whether reduces useless resources, only keep the resources of preferred configuration, like current density or locale.
# If set to be true, it will cost much more time to build out a system.img of which the size is reduced.
# Default: false
#-----------------------------------------------------------------------------
#REDUCE_RESOURCES := true

##############################################################################
# Defines whether produces an image zipfile suitable for use with 'fastboot update'.
# Default: false
#-----------------------------------------------------------------------------
#PRODUCE_IMAGES_FOR_FASTBOOT := true

##############################################################################
# Defines whether generates a block-based OTA, system.img.dat in DAT format will be produced.
# Will fall back to a file-based OTA if the target_files is older and doesn't support block-based OTAs.
# Default: false
#-----------------------------------------------------------------------------
#PRODUCE_BLOCK_BASED_OTA := true


include $(PORT_BUILD)/main.mk
