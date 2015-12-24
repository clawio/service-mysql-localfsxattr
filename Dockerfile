FROM mysql
MAINTAINER Hugo Gonzalez Labrador
ENV MYSQL_PORT 57015
RUN sed -i s/3306/${MYSQL_PORT}/g /etc/mysql/my.cnf

EXPOSE ${MYSQL_PORT}
