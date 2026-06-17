package com.kgr.key2toolbox.ui

sealed class Screen(val title: String, val subtitle: String = "") {
    data object Home : Screen("Key2 Toolbox")
    data object CtrlKey : Screen("Convenience Key \u2192 Ctrl", "Remap convenience key to Ctrl")
    data object Zram : Screen("ZRAM", "Compression algorithm and size")
    data object KbdLight : Screen("Adaptive Keyboard Backlight", "Auto-dim with screen brightness")
    data object WirelessAdb : Screen("Persistent Wireless ADB", "Static port, survives reboot")
    data object Dt2w : Screen("Double-Tap to Wake", "Wake screen with a double tap")
    data object NavLock : Screen("Keyboard Nav Lock", "Stop accidental nav presses")
    data object PinKeyboard : Screen("Lockscreen PIN on Keyboard", "Type your PIN on hardware keys")
    data object AudioFx : Screen("Audio FX", "System-wide EQ, bass, loudness")
}
