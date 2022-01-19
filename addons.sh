#!/bin/bash

action=$1

. tools/redis.sh
. tools/rabbitmq.sh
. tools/mongo.sh

Display_Addons_Menu()
{
    echo "##### Install Redis\RabbitMQ\MongoDB #####"
    echo "1: Redis"
    echo "2: RabbitMQ"
    echo "3: MongoDB"
    echo "exit: Exit current script"
    echo "#####################################################"
    read -p "Enter your choice (1, 2, 3 or exit): " action
}

Display_Addons_Menu

case "${action}" in
    1)
        Install_Redis
        ;;
    2)
        Install_RabbitMQ
        ;;
    3)
        Install_MongoDB
        ;;
    [eE][xX][iI][tT])
        exit 1
        ;;
    *)
        echo "Usage: ./addons.sh {install} {Redis|RabbitMQ|MongoDB}"
        ;;
esac

