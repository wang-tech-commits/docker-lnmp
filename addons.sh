#!/bin/bash

action=$1

. tools/rabbitmq.sh
. tools/mongodb.sh

Display_Addons_Menu()
{
    echo "##### Install RabbitMQ\MongoDB #####"
    echo "1: RabbitMQ"
    echo "2: MongoDB"
    echo "exit: Exit current script"
    echo "#####################################################"
    read -p "Enter your choice (1, 2 or exit): " action
}

Display_Addons_Menu

case "${action}" in
    1)
        Install_RabbitMQ
        ;;
    2)
        Install_MongoDB
        ;;
    [eE][xX][iI][tT])
        exit 1
        ;;
    *)
        echo "Usage: ./addons.sh {install} {RabbitMQ|MongoDB}"
        ;;
esac

