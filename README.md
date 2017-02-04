Resilio Sync
===============

Sync uses peer-to-peer technology to provide fast, private file sharing for teams and individuals. By skipping the cloud, transfers can be significantly faster because files take the shortest path between devices. Sync does not store your information on servers in the cloud, avoiding cloud privacy concerns.

This image is primarily meant to be used to share a data folder between containers, but you can edit start-sync to have Resilio Sync use what ever configuration you like. Check out Resilios documentation on the config file [here] (https://help.getsync.com/hc/en-us/articles/206178884-Running-Sync-in-configuration-mode).

# Usage

    docker run -i --rm --entrypoint=/usr/bin/rslsync jatula/resilio-sync:2.4.4 --generate-secret


    docker run -d --name Sync \
      --volumes-from=<other container id> \
      -e SYNC_DIR=/folder/on/other/container \
      -e SECRET=A7EO4A2Q6FUOCGNI34WOBI3ENOGFFOQ6N \
      --restart on-failure \
      jatula/resilio-sync:2.4.4
