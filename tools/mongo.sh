#!/bin/bash

Install_MongoDB(){
  cd bin || exit;

  docker-compose -f mongo.yml up -d
}
