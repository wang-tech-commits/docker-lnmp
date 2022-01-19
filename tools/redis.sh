#!/bin/bash

Install_Redis(){
  cd bin || exit;

  docker-compose -f redis.yml up -d
}