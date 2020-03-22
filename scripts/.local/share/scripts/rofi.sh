#!/bin/bash

case $1 in
    "-d") showAction="drun"
        ;;
    "-w") showAction="window"
        ;;
    *) exit
        ;; 
esac

rofi -modi "drun,window" 	\
    -show $showAction		\
    -show-icons

