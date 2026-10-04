#!/busybox/sh

while [ ! -f "/provisioning-configs/proxy.env" ]; do
	echo "Waiting for reverse-proxy-init to generate default-proxy bootstrap token..."
	sleep 1
done

. /provisioning-configs/proxy.env
echo "NetBird proxy service is starting..."
exec "/go/bin/netbird-proxy"
