#!/bin/sh

# Automatically reports the nav board by restarting the native parrot app and then killing it
# Not known how much sleep is needed. I would like to shorten them to reduce any flight issues
/bin/program.elf &
usleep 100000
killall -9 program.elf
usleep 100000
echo -e -n "\1" > /dev/ttyO1

