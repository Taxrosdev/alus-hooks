#!/bin/bash

# Get running kernel
CURRENT_KERNEL="non-existent-kernel"
read -ra CMDLINE < /proc/cmdline
for i in "${CMDLINE[@]}"; do
    if [[ "$i" == commit=* ]]; then
        CURRENT_KERNEL="${i#commit=}"
        break
    fi
done

ls /boot/ | grep vmlinuz | grep -v $ALUS_COMMIT_HASH | grep -v $CURRENT_KERNEL | xargs --max-args 1 rm -v
