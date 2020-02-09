FROM alpine:latest
LABEL maintainer="staliostefano@gmail.com"

COPY mysql-backup.sh /etc/periodic/daily/

RUN apk update && \
    apk upgrade && \
    apk add --no-cache mariadb-client && \
    chmod a+x /etc/periodic/daily/mysql-backup.sh
    
