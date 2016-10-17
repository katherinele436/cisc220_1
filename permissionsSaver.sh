#Anna Tang 10061146
#Henry Wang 10199252
#Katherine Le 10188031
#Marshall Ruse 10066247 
#!/bin/bash

name=savedPermissions

# get the to save file name
if [[ -e $name ]] ; then
	i=1
	while [[ -e $name$i ]] ; do
		let i++
	done
	name=$name$i
fi

touch $name

# read dirs and files, save the permissions
ls -l | grep ^- | awk '{if (NR > 1) print $1 " " $9}' >> $name
echo "$name created!"
