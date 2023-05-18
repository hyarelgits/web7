FROM centos:latest
MAINTAINERS sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-CSS.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf marksups-kindle/* .
RUN rm -rf __MACOSX markups-kindle kindle-zip
CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

