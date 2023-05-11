#!/usr/bin/env sh

docker volume create --name db

docker volume ls

docker run \
  -d \
  --name fastcampus-postgres \
  -e POSTGRES_PASSWORD=mysecretpassword \
  -v db:/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres
