#!/bin/bash

count=`ps -ef | grep "lanproxy.client.ProxyClientContainer" | grep -v "grep" | wc -l`
#echo $count

start_path="${basepath}/distribution/proxy-client-0.1/bin/startup.sh"
stop_path="${basepath}/distribution/proxy-client-0.1/bin/stop.sh"
 
if [ $count -gt 0 ]; then
 echo "already runing in the process, do not need to start"
else
 echo "start the lanproxy ... ";
 sh $start_path
fi
# sh 12
#sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/stop.sh
# sh /usr/local/lanproxy/distribution/proxy-client-0.1/bin/startup.sh
