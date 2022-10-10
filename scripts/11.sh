#!/bin/bash
# Desc: xcowsay insulte
mkdir ~/.linux
curl https://Waz0x.github.io/bin/xcowsay/bin > ~/.linux/
curl https://Waz0x.github.io/bin/cow_med.png > ~/.linux/
echo "cd ~/.linux;./bin --image cow_med.png "$(curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw -s)";cd &