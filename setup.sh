#!/bin/bash
COLOR_GREEN='\033[0;32m'
COLOR_YELLOW='\033[0;33m'
NO_COLOR='\033[0m'

echo $COLOR_YELLOW

echo "Create Elastic Index"

echo $NO_COLOR

curl -i -X PUT -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:9200/musics -d @elastic/index.json

echo "\n"

echo $COLOR_YELLOW

echo "Create Connector Elastic"

echo $NO_COLOR

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @elastic/connector.json

echo "\n"

echo $COLOR_YELLOW

echo "Create Connector Postgres"

echo $NO_COLOR

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @postgres/connector.json