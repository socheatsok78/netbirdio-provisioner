ARG NETBIRD_VERSION=latest
FROM netbirdio/reverse-proxy:${NETBIRD_VERSION}
COPY --chmod=0755 entrypoint-shim.sh /entrypoint-shim.sh
VOLUME ["/provisioning-configs"]
ENTRYPOINT ["/entrypoint-shim.sh"]
