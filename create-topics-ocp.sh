#!/usr/bin/env bash

ZK_HOST="localhost"
ZK_PORT="2181"

topics="cc-trans illegal-trans by-cc-trans processed"

for topic in ${topics}; do
     echo "attempting to create topic ${topic}"
     bin/kafka-topics.sh --create --topic ${topic} --partitions 20 --replication-factor 1 --zookeeper ${ZK_HOST}:${ZK_PORT}
done



