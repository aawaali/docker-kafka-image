#!/bin/bash
set -e
/home/kafka_2.12-2.6.0/bin/kafka-server-start.sh /home/kafka_2.12-2.6.0/config/server.properties
exec "$@";
