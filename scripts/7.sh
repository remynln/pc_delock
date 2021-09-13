#!/bin/bash
# Desc: flip the screen to a random position every time the user open a terminal
echo 'xrandr -o $(( $RANDOM % 4 ))' >> ~/.bashrc
echo 'xrandr -o $(( $RANDOM % 4 ))' >> ~/.zshrc