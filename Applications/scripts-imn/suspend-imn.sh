#!/bin/sh

lock() {
    i3lock-imn
}

lock && systemctl suspend

