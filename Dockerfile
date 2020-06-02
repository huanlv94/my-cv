FROM nginx:1.18.0

# COPY default.conf.erb /etc/nginx/conf.d/default.conf
COPY default.conf.erb /etc/nginx/nginx.conf.erb

RUN mkdir -p /var/www/cv.huanlv

COPY . /var/www/cv.huanlv

WORKDIR /var/www/cv.huanlv

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD nginx -g 'daemon off;'
