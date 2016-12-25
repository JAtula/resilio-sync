Resilio Sync
===============

Sync uses peer-to-peer technology to provide fast, private file sharing for teams and individuals. By skipping the cloud, transfers can be significantly faster because files take the shortest path between devices. Sync does not store your information on servers in the cloud, avoiding cloud privacy concerns.

# Usage

    SYNC_DIR=/path/to/data/folder/on/the/host
    SECRET=[ /usr/bin/rslsync --generate secret ]

    mkdir -p $DATA_FOLDER

    docker run -d --name Sync \
      -e SYNC_DIR=/data \
      -e SECRET=A7EO4A2Q6FUOCGNI34WOBI3ENOGFFOQ6N
      --restart on-failure \
      jatula/resilio-sync:2.4.4
