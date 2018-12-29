#!/bin/bash
rm restart.sh -f
rm start.sh -f
rm stop.sh -f
rm status.sh -f
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/lanproxy/restart.sh
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/lanproxy/start.sh
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/lanproxy/stop.sh
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/lanproxy/status.sh