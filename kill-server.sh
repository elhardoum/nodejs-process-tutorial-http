ps aux | grep server.sh  | grep -v grep | awk '{ print $2 }' | xargs sudo kill
ps aux | grep 'node server.js'  | grep -v grep | awk '{ print $2 }' | xargs sudo kill