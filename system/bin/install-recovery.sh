#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33903950:c1f7a5eb0ed7f8f7868c76c2965d2fc175a4b4ff; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:a982326673b3833812c657049bbea9f1f6a93626 EMMC:/dev/block/bootdevice/by-name/recovery c1f7a5eb0ed7f8f7868c76c2965d2fc175a4b4ff 33903950 a982326673b3833812c657049bbea9f1f6a93626:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
