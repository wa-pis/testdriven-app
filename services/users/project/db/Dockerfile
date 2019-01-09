# base image
FROM mysql/mysql-server:8.0.13

# run create.sql on init
ADD create.sql /docker-entrypoint-initdb.d
