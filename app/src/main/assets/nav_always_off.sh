#!/system/bin/sh
# Nav Lock - Disable ALWAYS - kgr
#
# The synaptics_dsx_2 input device isn't always present yet when service.d
# scripts run at boot, so a single attempt can silently no-op. Retry for up
# to ~20s, succeeding as soon as the device shows up and the write lands.
i=0
while [ "$i" -lt 20 ]; do
    found=0
    for d in /sys/class/input/event*; do
        if [ "$(cat "$d/device/name" 2>/dev/null)" = synaptics_dsx_2 ]; then
            echo 0 > "$d/device/0dbutton"
            found=1
        fi
    done
    [ "$found" -eq 1 ] && break
    sleep 1
    i=$((i + 1))
done
