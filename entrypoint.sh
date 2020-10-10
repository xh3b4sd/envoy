#!/bin/sh

set -e

cat /tmp/config.yaml | envsubst \$ENVOY_LISTEN_PORT,\$SERVICE_DISCOVERY_ADDRESS,\$SERVICE_DISCOVERY_PORT > /etc/config.yaml

/usr/local/bin/envoy -c /etc/config.yaml
