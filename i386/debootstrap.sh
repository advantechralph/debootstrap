#!/bin/bash
. config
debootstrap  --arch=${ARCH} ${DISTRO} ${DST} ${MIRROT}
eval "${CHROOT_ENV} chroot ${DST} /usr/sbin/locale-gen en_US.UTF-8"
eval "${CHROOT_ENV} chroot ${DST} apt-get install -y ncurses-term"
eval "${CHROOT_ENV} chroot ${DST} apt-get install -y ubuntu-server"
eval "${CHROOT_ENV} chroot ${DST} apt-get install -y tasksel"
