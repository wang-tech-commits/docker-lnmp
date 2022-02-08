#!/bin/bash

Install_Nodejs(){
  cd bin || exit;

  docker-compose -f nodejs.yml up -d
}
