ARG INFLUXDB_IMAGE=influxdb:3-core
ARG BUILD_FROM=ghcr.io/home-assistant/base-debian:latest

FROM ${INFLUXDB_IMAGE} AS influxdb-source
FROM ${BUILD_FROM}

# Install runtime dependencies
RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        ca-certificates \
        libssl3 \
        curl \
        jq \
        gosu \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd --gid 1500 influxdb3 \
    && useradd --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3

# Copy InfluxDB 3 binary and libraries from official container
COPY --from=influxdb-source /usr/bin/influxdb3 /usr/bin/influxdb3
COPY --from=influxdb-source /usr/lib/influxdb3 /usr/lib/influxdb3

# Copy root filesystem
COPY rootfs /

# Fix permissions
RUN chmod a+x /etc/services.d/influxdb3/run

# Labels
LABEL \
    org.opencontainers.image.title="InfluxDB 3" \
    org.opencontainers.image.description="InfluxDB 3 Core time-series database" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
