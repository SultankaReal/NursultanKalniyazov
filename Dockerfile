FROM ubuntu
MAINTAINER Kalniyazov Nursultan <sultanidze24@gmail.com>

RUN apt-get update && apt-get -y install curl
#RUN sleep 2
RUN apt install -y nginx
#RUN sleep 2
RUN apt install -y systemctl
#RUN sleep 2
RUN systemctl enable nginx
#RUN sleep 2
#RUN rm /etc/nginx/sites-enabled/default && service nginx restart
RUN sleep 5
RUN mkdir -p /project/
#RUN sleep 2
WORKDIR /project/
#RUN sleep 1
#COPY /etc/nginx/nginx.conf /project
RUN systemctl start nginx
#RUN rm /etc/nginx/sites-available/default
#COPY /project/default /etc/nginx/sites-available/
#RUN service status nginx
#RUN nginx -t -c /etc/nginx/nginx.conf
#RUN nginx -t
RUN systemctl status nginx
RUN apt-get install wget
COPY /script3 /project/
COPY /root /project
COPY /Makefile /project
RUN ./script3
#COPY /project/ /project/
#RUN sleep 1
#RUN ./script3

