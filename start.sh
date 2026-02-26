#!/bin/sh

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_DESKTOP=Hyprland

export GTK_USE_PORTAL=1
export QT_USE_PORTAL=1
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME=qt5ct
export MOZ_ENABLE_WAYLAND=1

export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export CLUTTER_BACKEND=wayland
export GDK_BACKEND="wayland,x11"

exec dbus-run-session Hyprland
