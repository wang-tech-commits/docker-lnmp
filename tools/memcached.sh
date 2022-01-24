#!/bin/bash

Install_Memcached(){
  cd bin || exit;

  docker-compose -f memcached.yml up -d
}