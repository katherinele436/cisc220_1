#!/bin/bash


ls -l | awk {'print $1 "\t" $9 " " $10'} > currentSettings

if [[ $1 == 's' ]]; then
        diff -x "currentSettings"  --suppress-common-lines -y currentSettings $2
        rm currentSettings
fi

