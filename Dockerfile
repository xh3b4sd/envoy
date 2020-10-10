
FROM envoyproxy/envoy:v1.16.0

COPY entrypoint.sh /entrypoint.sh
COPY envoy.yaml /tmpl/envoy.yaml

RUN chmod +x /entrypoint.sh
RUN apt-get update && apt-get install gettext -y

ENTRYPOINT ["/entrypoint.sh"]
