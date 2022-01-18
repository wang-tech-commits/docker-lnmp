#!/bin/bash

Install_RabbitMQ(){
  cd bin || exit;

  docker-compose -f rabbitmq.yml up -d
}


