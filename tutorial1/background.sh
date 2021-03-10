#!/usr/bin/env bash

docker run -d \
    -v $PWD:/data \
    -p 5432:5432 \
    --name postgres-server \
    -e POSTGRES_HOST_AUTH_METHOD=trust \
    postgres:13.2-alpine
