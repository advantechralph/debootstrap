#!/bin/bash
. config
umount ${DST}/dev/ > /dev/null 2>&1
umount ${DST}/sys/ > /dev/null 2>&1
umount ${DST}/proc/ > /dev/null 2>&1
mount -o bind /dev ${DST}/dev
mount -t proc proc ${DST}/proc
mount -t sysfs sys ${DST}/sys
eval "${CHROOT_ENV} chroot ${DST} /bin/bash"
