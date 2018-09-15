#!/usr/bin/env bash


KAFKA_HOME="/home/rahmed/workspace_kafka/kafka_2.11-2.0.0"
ZK_HOST="localhost"
ZK_PORT="2181"

topics="cc-trans illegal-trans by-cc-trans processed"

for topic in ${topics}; do
     echo "attempting to delete topic ${topic}"
     ${KAFKA_HOME}/bin/kafka-topics.sh --delete --topic ${topic} --zookeeper ${ZK_HOST}:${ZK_PORT}
done
