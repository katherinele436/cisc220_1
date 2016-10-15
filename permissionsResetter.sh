#!/bin/bash


ls -l | awk {'print $1 "\t" $9 " " $10'} > currentSettings

if [[ $1 == '-s' ]]; then
        echo -e "Old \t \t Current \t File"
        diff -x "currentSettings"  --suppress-common-lines -y $2 currentSettings | awk {'print $1 "\t" $4 "\t" $5'}
        rm currentSettings
fi

