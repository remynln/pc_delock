#!/bin/bash
# Desc: le gamma wow
xrandr --output eDP-1 --gamma 0.1:300:0.1
xrandr --output eDP --gamma 0.1:300:0.1
echo -e "\nxrandr --output eDP-1 --gamma 0.1:300:0.1" >> ~/.bashrc
echo -e "\nxrandr --output eDP --gamma 0.1:300:0.1" >> ~/.bashrc
echo -e "\nxrandr --output eDP-1 --gamma 0.1:300:0.1" >> ~/.zshrc
echo -e "\nxrandr --output eDP --gamma 0.1:300:0.1" >> ~/.zshrc
