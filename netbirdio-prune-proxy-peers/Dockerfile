FROM alpine/sqlite:3.53.4
COPY --chmod=0755 entrypoint.sh /entrypoint.sh
ENV NETBIRD_DB_FILE=/data/store.db
ENTRYPOINT ["/entrypoint.sh"]
