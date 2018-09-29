#!/bin/bash

case $1 in
    "-d") showAction="drun"
        ;;
    "-w") showAction="window"
        ;;
    *) exit
        ;; 
esac

rofi -modi "drun,window"                                                          \
    -show $showAction                                                             \
    -dpi 96                                                                       \
    -font "Fira Mono 12"                                                          \
    -hide-scrollbar                                                               \
    -location 0                                                                   \
    -lines 7                                                                      \
    -show-icons									  \
    -sidebar-mode                                                                 \
    -theme ~/.cache/wal/colors-rofi-light.rasi 
