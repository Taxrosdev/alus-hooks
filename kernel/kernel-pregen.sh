#!/bin/bash

cp -ra /usr/lib/vmlinuz /boot/vmlinuz-$ALUS_COMMIT_HASH
cp -ra /usr/lib/initramfs /boot/initramfs-$ALUS_COMMIT_HASH
