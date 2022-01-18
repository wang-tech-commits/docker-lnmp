#!/bin/bash

Install_MongoDB(){
  cd bin || exit;

  docker-compose -f mongodb.yml up -d
}
