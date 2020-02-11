mysql-backup
A docker that is in charge for periodically backing up a mysql database on a daily basis.

Run it inside a docker-compose file

```
...
  dbbck:
    image: stefanost67/mysql-backup:latest
    container_name: dbbck
    volumes:
      - ${PWD}/dbbck:/opt/mysql/backup
    environment:
      - MYSQL_CONTAINER_NAME=db
      - MYSQL_DATABASE=wordpress
      - MYSQL_ROOT_PASSWORD=${DB_ROOT_PASSWORD}
    command: crond -f -d 8
    restart: unless-stopped

...
```
