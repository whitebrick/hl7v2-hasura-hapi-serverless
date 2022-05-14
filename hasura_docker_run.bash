#!/usr/bin/env bash

docker run -d -p 8080:8080 \
-e HASURA_GRAPHQL_DATABASE_URL= postgres://myemrusr:myemrpwd@host.docker.internal:5432/myemr \
-e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
-e HASURA_GRAPHQL_DEV_MODE=true \
-e HASURA_GRAPHQL_ADMIN_SECRET=admin \
hasura/graphql-engine:latest