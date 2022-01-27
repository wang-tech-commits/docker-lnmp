#!/bin/bash

Install_ElasticSearch(){
  cd bin || exit;

  docker-compose -f elasticsearch.yml up -d
}