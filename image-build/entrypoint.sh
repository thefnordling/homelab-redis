#!/bin/bash
set -e
REQUIREPASS=$(</run/secrets/redis-password)
sed -i "s/REPLACEMETOKEN/$REQUIREPASS/g" /usr/local/etc/redis.conf
redis-server /usr/local/etc/redis.conf