FROM alpine:edge
RUN apk add --no-cache nginx nginx-mod-http-dav-ext\
 && mkdir -p /data/www\
 && chown -R nginx:nginx /data\
 && mkdir /run/nginx
COPY webdav.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD nginx -g "daemon off;"
