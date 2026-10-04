FROM docker:cli
COPY --chmod=0755 entrypoint.sh /entrypoint.sh
VOLUME ["/provisioning-configs"]
ENTRYPOINT ["/entrypoint.sh"]
