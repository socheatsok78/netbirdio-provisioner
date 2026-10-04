FROM netbirdio/reverse-proxy:latest
COPY --chmod=0755 entrypoint-shim.sh /entrypoint-shim.sh
VOLUME ["/provisioning-configs"]
ENTRYPOINT ["/entrypoint-shim.sh"]
