#!/bin/bash
# Desc: disable wifi, to enable it `ifup wlan0`
echo "ifdown wlan0" >> ~/.bashrc
echo "ifdown wlan0" >> ~/.zshrc