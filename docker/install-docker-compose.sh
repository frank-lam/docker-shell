#!/bin/bash
yum -y install epel-release
yum -y install python-pip
pip install --upgrade pip
pip install docker-compose
docker-compose -version