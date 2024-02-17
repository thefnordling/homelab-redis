FROM redis:7.2.4
RUN apt-get update && apt-get install dos2unix
COPY redis.conf /usr/local/etc/redis.conf
COPY entrypoint.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
