FROM ubuntu:latest
LABEL maintainer="Paved"  email="pavedngoune@gmail.com"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

EXPOSE 80
# ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/gitPaved/static-website-example.git /var/www/html/
CMD ["nginx","-g","daemon off;"]