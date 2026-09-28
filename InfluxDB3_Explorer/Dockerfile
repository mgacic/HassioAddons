ARG EXPLORER_IMAGE=influxdata/influxdb3-ui:latest
ARG BUILD_FROM=ghcr.io/home-assistant/base-debian:latest

FROM ${EXPLORER_IMAGE} AS ui-source
FROM ${BUILD_FROM}

# Install runtime dependencies if needed
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        ca-certificates \
        curl \
        jq \
    && rm -rf /var/lib/apt/lists/*

# Copy the UI files from the official image
# (We might need to adjust this depending on the exact contents of influxdata/influxdb3-ui)
COPY --from=ui-source / /opt/influxdb3-ui

# Copy local root filesystem (for s6-overlay services)
COPY rootfs /

# Set executable permissions
RUN chmod a+x /etc/services.d/influxdb3-ui/run

# Labels
LABEL \
    org.opencontainers.image.title="InfluxDB 3 Explorer" \
    org.opencontainers.image.description="Official web UI for InfluxDB 3 Core" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
