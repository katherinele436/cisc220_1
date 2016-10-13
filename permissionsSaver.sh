#!/bin/bash

name=savedPermissions
if [[ -e $name ]]; then
        i=1
        while [[ -e $name$i ]]; do
                let i++
        done
        name=$name$i
fi

ls -l | awk {'print $1 "\t" $9 " " $10'} >$name
echo $name created!
