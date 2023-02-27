FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install httpd -y
COPY ./index.html /var/www/html
COPY ./images /var/www/html
COPY ./subpage.html /var/www/html
COPY ./templatemo_style.css /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
