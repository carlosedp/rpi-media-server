#!/bin/bash
for i in $(docker volume ls -q); do
    echo Backup volume: $i
    export DOCKER_VOLUME=$i
    docker run -d \
      --name=backup-$i \
      --rm \
      -v $DOCKER_VOLUME:/$DOCKER_VOLUME:ro \
      -v /mnt/1TB-WDred/Backups/:/backup \
      alpine \
      tar -czpf /backup/$DOCKER_VOLUME-$(date +%Y%m%d_%H%M%S).tar.gz $DOCKER_VOLUME
done
