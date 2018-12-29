#!/bin/bash
docker run -d --name biodcloud_redis -p 6379:6379 -v /user/local/docekr/redis/data:/data redis --requirepass "123456"