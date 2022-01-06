#!/bin/bash

php -v &
crontab /etc/cron.d/cron &
cron -f &
docker-php-entrypoint php-fpm &
supervisord -n -c /etc/supervisor/supervisord.conf
