#!/bin/bash
rm -f docker-compose-tmp.yml
rm -f docker-compose.yml
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/mysql/docker-compose-tmp.yml

sourcepath="/DATA_DIR"
basepath=$(cd `dirname $0`; pwd)
sed -i "s|\/DATA_DIR|$basepath|g" docker-compose-tmp.yml
mv docker-compose-tmp.yml docker-compose.yml
rm -f up-dk-compose.sh