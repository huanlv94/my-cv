FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/about.levanhuan.com

COPY . /var/www/about.levanhuan.com

EXPOSE 80
