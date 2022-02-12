#!/bin/sh
docker run -d -v /home/jkridner/workspace/bashcraft:/data \
    --dns 192.168.0.1 \
    -e TYPE=FORGE \
    -e MEMORY=4G \
    -e VERSION=1.16.5 -e FORGEVERSION=36.1.0 \
    -p 25565:25565 -e EULA=TRUE --name bashcraft itzg/minecraft-server:java8

