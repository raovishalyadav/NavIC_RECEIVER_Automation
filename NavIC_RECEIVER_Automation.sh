#!/bin/bash
# Copyright (C) 2022 Vishal Yadav

HOST="IP Address"
USER="Username"
PASSWORD="Password"

mjd= date +%Y%m%d

m1=`echo $mjd`

m2=`echo $(($( date "+%s" -d m1 ) /86400+40588))`

m3=`echo "$m2 - 2" | bc`

m4=`echo $m3 | cut -c1-2`

m5=`echo $m3 | cut -c 3-5`
 
sshpass -p "Password of the Receiver" scp -oKexAlgorithms=+diffie-hellman-group1-sha1,diffie-hellman-group14-sha1 -r "Username of the Receiver"@"IP Address of the Receiver":/"File location in the Receiver"$m4.$m5 ~/"Path of Folder in which you want to download"

file=`echo "Filename of file to upload$m4.$m5"`

ftp -invp $HOST "Port number" <<EOF
user $USER $PASSWORD
lcd "Local direcory of the downloaded file location"
cd /"Location of the file in the Server"
mput $file
bye
EOF
exit 0




