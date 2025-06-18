#!/bin/sh
docker compose up -d
exit 0
docker run -d \
    --mount type=bind,source="/home/ubuntu/workspace/bashcraft",target=/data \
    --dns 0.0.0.0 \
    -e TYPE=FORGE \
    -e MEMORY=4G \
    -e RCON_PASSWORD=JAnBwaBrgBNrDTZ \
    -e VERSION=1.16.5 -e FORGEVERSION=36.2.34 \
    -p 25565:25565 -e EULA=TRUE --name bashcraft itzg/minecraft-server:java8

