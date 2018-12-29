#!/bin/bash

count=`ps -ef | grep "lanproxy.client.ProxyClientContainer" | grep -v "grep" | wc -l`
#echo $count
 


if [ $count -gt 0 ]; then
 echo "already runing in the process, now stop the lanproxy..."
 sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/stop.sh;
else
 echo "lanproxy not runing, do not need to stop"
fi
# sh 12
#sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/stop.sh
# sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/startup.sh
