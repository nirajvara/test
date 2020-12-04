FROM centos:latest
MAINTAINER niraj.vara@gmail.com
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORDDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D",FORGROUND]
EXPOSE 80
