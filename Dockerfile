FROM ubuntu:14.04
MAINTAINER Tatsuya Nanjo <noralife@gmail.com>
RUN apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y install mysql-server
RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
RUN mkdir /db
WORKDIR /db
ADD . /db
RUN /etc/init.d/mysql start && mysqladmin -u root password root
RUN /etc/init.d/mysql start && mysql -uroot -proot < dump.sql
RUN /etc/init.d/mysql start && mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;"
EXPOSE 3306
CMD ["mysqld"]
