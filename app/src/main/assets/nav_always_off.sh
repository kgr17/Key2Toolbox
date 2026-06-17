#!/system/bin/sh
# Nav Lock - Disable ALWAYS - kgr
for d in /sys/class/input/event*; do
    if [ "$(cat "$d/device/name" 2>/dev/null)" = synaptics_dsx_2 ]; then
        echo 0 > "$d/device/0dbutton"
    fi
done
