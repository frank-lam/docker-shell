#!/bin/bash

count=`ps -ef | grep "lanproxy.client.ProxyClientContainer" | grep -v "grep" | wc -l`
#echo $count
 


if [ $count -gt 0 ]; then
 echo "already runing in the process, now restart the lanproxy..."
 sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/stop.sh;
 sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/startup.sh;
else
 echo "start the lanproxy ... ";sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/startup.sh;
fi
# sh 12
#sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/stop.sh
# sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/startup.sh
