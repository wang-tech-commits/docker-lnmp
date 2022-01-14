#!/bin/bash

cd bin;

action=$1

Display_Restart_Menu()
{
    echo "1: Restart Nginx"
    echo "2: Restart MySQL"
    echo "3: Restart PHP"
    echo "4: Restart Redis"
    echo "5: Restart RabbitMQ"
    echo "exit: Exit current script"
    echo "###################################################"
    read -p "Enter your choice (1, 2, 3, 4, 5 or exit): " action
}

Display_Restart_Menu

case "${action}" in
    1)
    docker-compose restart nginx
;;
    2)
    docker-compose restart mysql
;;
    3)
    docker-compose restart php
;;
    4)
    docker-compose restart redis
;;
    5)
    docker-compose restart rabbitmq
;;
esac
