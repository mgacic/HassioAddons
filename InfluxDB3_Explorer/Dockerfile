ARG EXPLORER_IMAGE=influxdata/influxdb3-ui:latest

FROM ${EXPLORER_IMAGE}

# Switch to root to install jq and copy the run script
USER root

RUN apk update && apk add --no-cache jq su-exec

COPY run.sh /run.sh
RUN chmod +x /run.sh



ENTRYPOINT ["/run.sh"]

LABEL \
    org.opencontainers.image.title="InfluxDB 3 Explorer" \
    org.opencontainers.image.description="Official web UI for InfluxDB 3 Core" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
