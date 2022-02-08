#!/bin/bash

action=$1

. tools/redis.sh
. tools/rabbitmq.sh
. tools/mongo.sh
. tools/memcached.sh
. tools/elasticsearch.sh
. tools/nodejs.sh

Display_Addons_Menu()
{
    echo "##### Install Redis\RabbitMQ\MongoDB\Memcached\ElasticSearch\Nodejs #####"
    echo "1: Redis"
    echo "2: RabbitMQ"
    echo "3: MongoDB"
    echo "4: Memcached"
    echo "5: ElasticSearch"
    echo "6: Nodejs"
    echo "exit: Exit current script"
    echo "#####################################################"
    read -p "Enter your choice (1, 2, 3, 4, 5, 6 or exit): " action
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
    4)
        Install_Memcached
        ;;
    5)
        Install_ElasticSearch
        ;;
    6)
        Install_Nodejs
        ;;
    [eE][xX][iI][tT])
        exit 1
        ;;
    *)
        echo "Usage: ./addons.sh {install} {Redis|RabbitMQ|MongoDB|Memcached|ElasticSearch|Nodejs}"
        ;;
esac

