#!/bin/sh

BOOT_CONFIG="/boot/recalbox-user-config.txt"

mount -o remount,rw /boot 2>/dev/null || true

touch "$BOOT_CONFIG"

ensure_line()
{
    LINE="$1"

    if ! grep -qxF "$LINE" "$BOOT_CONFIG"; then
        echo "$LINE" >> "$BOOT_CONFIG"
    fi
}

ensure_line "dtparam=i2c_arm=on"
ensure_line "dtparam=spi=on"
ensure_line "dtoverlay=gpio-ir,gpio_pin=13"

sync

exit 0
