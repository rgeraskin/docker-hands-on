#!/bin/bash

docker pull centos:6
docker run -it centos:6 /bin/bash

# inside container
yum -y update
yum -y install git httpd

git clone https://github.com/linuxacademy/content-dockerquest-spacebones
cp content-dockerquest-spacebones/doge/* /var/www/html
mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.bak

chkconfig httpd on
service httpd start
# outside container

docker commit 3be8e40facec spacebones:thewebsite