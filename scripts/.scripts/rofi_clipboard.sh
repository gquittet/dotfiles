#!/bin/sh

rofi -modi "clipboard:greenclip print"         \
    -show clipboard                            \
    -dpi 96                                    \
    -font "Fira Mono 12"                       \
    -hide-scrollbar                            \
    -location 0                                \
    -theme ~/.cache/wal/colors-rofi-light.rasi \
    -run-command '{cmd}'

