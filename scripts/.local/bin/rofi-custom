#!/bin/bash

case $1 in
    "-d") showAction="drun"
        ;;
    "-w") showAction="window"
        ;;
    *) exit
        ;; 
esac

rofi	-modi "" 		\
	-show $showAction	\
	-show-icons

