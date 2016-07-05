#!/usr/bin/env bash

socat TCP-LISTEN:8080,fork TCP:127.0.0.1:8000 &

[-f /var/datastore] || /gcd/gcd.sh create /var/datastore/
/gcd/gcd.sh start -p 8000 /var/datastore/
