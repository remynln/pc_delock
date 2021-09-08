#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    online=1
else
    online=0
fi

rdm=$(( $RANDOM % 15 ))
echo $rdm
