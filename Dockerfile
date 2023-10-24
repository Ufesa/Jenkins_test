FROM alpine

RUN apk update && \
    apk add nginx && \
    #mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig && \ 
    mkdir www
   
COPY src/nginx.conf /etc/nginx
COPY src/index.html /www

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
