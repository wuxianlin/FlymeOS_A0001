#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9603072:a2cf1830cf98bfb8975543710342f6b1b51163ac; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8519680:38cab674bf929120641d837e1de7e5dce19df7fd EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery a2cf1830cf98bfb8975543710342f6b1b51163ac 9603072 38cab674bf929120641d837e1de7e5dce19df7fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
