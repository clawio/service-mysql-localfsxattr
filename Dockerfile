FROM mysql
MAINTAINER Hugo Gonzalez Labrador
ENV MYSQL_PORT 57015
ENV MYSQL_MAX_CONNECTIONS 8192
RUN sed -i s/3306/${MYSQL_PORT}/g /etc/mysql/my.cnf
RUN sed -i s/\[mysqld\]/\[mysqld\]\nmax_connections=${MYSQL_MAX_CONNECTIONS}/g /etc/mysql/my.cnf

EXPOSE ${MYSQL_PORT}
