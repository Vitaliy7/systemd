#!/bin/bash

sed -i '/ServerRoot "\/etc\/httpd"/i PidFile \/var\/run\/httpd-second.pid' /etc/httpd/conf/second.conf
sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/second.conf
