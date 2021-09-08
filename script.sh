#!/bin/bash

rdm=$(( $RANDOM % 15 ))

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
	curl -s -H 'Authorization: token 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' "https://raw.githubusercontent.com/Waz0x/pc_delock_keur/master/scripts/$rdm.sh"
else
	shutdown now
fi
