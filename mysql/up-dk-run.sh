#!/bin/bash
rm -f dk-run.sh
rm -f dk-run-tmp.sh
wget https://raw.githubusercontent.com/frank-lam/docker-shell/master/mysql/dk-run-tmp.sh

sourcepath="/DATA_DIR"
basepath=$(cd `dirname $0`; pwd)
sed -i "s|\/DATA_DIR|$basepath|g" dk-run-tmp.sh
mv dk-run-tmp.sh dk-run.sh