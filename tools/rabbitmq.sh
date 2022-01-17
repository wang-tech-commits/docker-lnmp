#!/bin/bash

cd ../bin || exit;

docker-compose -f rabbitmq.yml up -d
