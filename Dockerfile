FROM nginx
LABEL maintainer="contact@devopscube.com" 
RUN  apt-get -y update && apt-get -y install nginx
EXPOSE 80

