FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/about.levanhuan.com

COPY . /var/www/about.levanhuan.com

WORKDIR /var/www/about.levanhuan.com

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
