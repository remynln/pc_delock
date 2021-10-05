#!/bin/bash
# Desc: slow down the startup of the terminal every time someone open one
echo "echo 'sleep 0.1' >> ~/.bashrc" >> ~/.bashrc
echo "echo 'sleep 0.1' >> ~/.zshrc" >> ~/.zshrc
