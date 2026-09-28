ARG EXPLORER_IMAGE=influxdata/influxdb3-ui:latest

FROM ${EXPLORER_IMAGE}

# We simply wrap the official image so it works as an add-on.
# No need to copy a custom rootfs, we'll just use its native entrypoint.

LABEL \
    org.opencontainers.image.title="InfluxDB 3 Explorer" \
    org.opencontainers.image.description="Official web UI for InfluxDB 3 Core" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
