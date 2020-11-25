#!/bin/bash
. config
# apt-get install -y qemu-user-static binfmt-support
debootstrap  --arch=${ARCH} --foreign ${DISTRO} ${DST} ${MIRROT}
cp -a /usr/bin/qemu-arm-static ${DST}/usr/bin
eval "${CHROOT_ENV} chroot ${DST} /bin/bash /debootstrap/debootstrap --second-stage"
eval "${CHROOT_ENV} chroot ${DST} /usr/sbin/locale-gen en_US.UTF-8"
eval "${CHROOT_ENV} chroot ${DST} apt-get install -y ncurses-term"
eval "${CHROOT_ENV} chroot ${DST} apt-get install -y ubuntu-server"
eval "${CHROOT_ENV} chroot ${DST} apt-get install -y tasksel"
