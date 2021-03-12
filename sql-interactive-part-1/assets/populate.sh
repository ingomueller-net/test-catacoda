#!/usr/bin/env bash

docker cp $HOME/employee.zip postgres-server:/tmp/employee.zip
docker exec --workdir /tmp postgres-server unzip employee.zip

echo "Create and populate 'employee' database."
docker exec postgres-server sh -c 'psql -U postgres -c "CREATE DATABASE employee;"'
docker exec postgres-server sh -c "psql -U postgres employee < /tmp/employee/schema.sql"
docker exec postgres-server sh -c "psql -U postgres -d employee -f /tmp/employee/inserts.sql"
