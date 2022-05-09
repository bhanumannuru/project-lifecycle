FROM centos:latest
MAINTAINER bhanu.ce110@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.con/assets/files/free-css-templates/download/page254/photogenic.zip /var/inn/htnl/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
