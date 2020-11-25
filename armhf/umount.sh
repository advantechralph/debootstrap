#!/bin/bash
. config
umount ${DST}/dev/ > /dev/null 2>&1
umount ${DST}/sys/ > /dev/null 2>&1
umount ${DST}/proc/ > /dev/null 2>&1
