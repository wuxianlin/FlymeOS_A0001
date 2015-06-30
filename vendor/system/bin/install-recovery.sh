#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9232384 4faece34c17819399eed9b96de4738a14d7afe48 6526976 ac4ced0183fb103a2d7e0d22353ed74acec02a0c
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9232384:4faece34c17819399eed9b96de4738a14d7afe48; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6526976:ac4ced0183fb103a2d7e0d22353ed74acec02a0c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 4faece34c17819399eed9b96de4738a14d7afe48 9232384 ac4ced0183fb103a2d7e0d22353ed74acec02a0c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
