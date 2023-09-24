FROM ubuntu:22.04

RUN apt-get update &&\
    apt install -y curl zip nginx 

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY . /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/nginx","-c","/etc/nginx/nginx.conf"] 

