FROM gliderlabs/alpine:3.2

MAINTAINER Stephen Coe

RUN apk --update add ca-certificates nginx

# Clean up
RUN rm -rf /var/cache/apk/*

EXPOSE 80 443

VOLUME ["/etc/nginx/conf.d"]

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
