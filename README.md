## Основное задание
#### Написать сервис, который раз в 30 секунд мониторит лог на предмет наличия ключевого слова

Задание сделано по инструкции,все действия интегрированы в Vagrantfile и сопутствующие файлы, полностью автоматическое развертывание. 
Необходимо выполнить "systemctl start watchlog.timer" и можно проверять "tail -f /var/log/messages".

#### Из репозитория epel установить spawn-fcgi и переписать init-скрипт на unit-файл

Задание сделано по инструкции,все действия интегрированы в Vagrantfile и сопутствующие файлы, полностью автоматическое развертывание. Необходимо выполнить "systemctl start spawn-fcgi.service" и можно проверять "systemctl status spawn-fcgi.service".

#### Дополнить unit-файл httpd возможностью запустить несколько инстансов сервера с разными конфигурационными файлами.

Задание сделано по инструкции,все действия интегрированы в Vagrantfile и сопутствующие файлы, полностью автоматическое развертывание. Необходимо выполнить "systemctl start httpd@first" "systemctl start httpd@second" и можно проверять "ss -tnulp | grep httpd":

>[root@systemdOtus vagrant]# ss -tnulp | grep httpd

>tcp   LISTEN 0      128                *:8080            *:*    users:(("httpd",pid=25260,fd=4),("httpd",pid=25259,fd=4),("httpd",pid=25258,fd=4),("httpd",pid=25256,fd=4))

>tcp   LISTEN 0      128                *:80              *:*    users:(("httpd",pid=25042,fd=4),("httpd",pid=25041,fd=4),("httpd",pid=25040,fd=4),("httpd",pid=25038,fd=4))
