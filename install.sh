#!/bin/bash

cp .env.sample bin/.env

cd bin || exit;

docker-compose up -d
