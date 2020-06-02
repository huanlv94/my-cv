FROM nginx:1.18.0

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/cv.huanlv

COPY . /var/www/cv.huanlv

WORKDIR /var/www/cv.huanlv

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
