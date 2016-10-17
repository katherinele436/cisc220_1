#Anna Teng 10061146
#Henry Wang 10199252
#Katherine Le 10188031
#Marshall Ruse 10066247 
#!/bin/bash

ip=$(echo `ifconfig 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`)
for x in $ip; do
	echo -n $x
	if [[ $x == 127* ]]; then
		echo " Local IP"	
	elif [[ $x == 10* || $x == 192.168* ]]; then
		echo " Private IP"
	else
		echo " Public IP"
	fi
done
