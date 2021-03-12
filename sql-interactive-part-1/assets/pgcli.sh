#!/usr/bin/env bash

docker run --rm -it \
    --link postgres-server \
    -v /root/.config/pgcli/config:/root/.config/pgcli/config \
    ingomuellernet/pgcli "$@"
