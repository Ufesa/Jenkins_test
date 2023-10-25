FROM alpine

RUN apk update && \
    apk add nginx &&

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
