#!/bin/bash

action=$1

. tools/rabbitmq.sh

Display_Addons_Menu()
{
    echo "##### RabbitMQ #####"
    echo "1: RabbitMQ"
    echo "exit: Exit current script"
    echo "#####################################################"
    read -p "Enter your choice (1 or exit): " action
}

case "${action}" in
    1)
        Install_RabbitMQ
        ;;
    [eE][xX][iI][tT])
        exit 1
        ;;
    *)
        echo "Usage: ./addons.sh {install|uninstall} {RabbitMQ}"
        ;;
esac

