FROM quay.io/kushalsamota/centos:latest
RUN yum install httpd -y
COPY ./index.html /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
