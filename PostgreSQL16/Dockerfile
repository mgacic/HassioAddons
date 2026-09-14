ARG BUILD_FROM=ghcr.io/home-assistant/base:latest
FROM ${BUILD_FROM}

# Install PostgreSQL and Exporter
RUN apk add --no-cache \
    postgresql16 \
    postgresql16-client \
    su-exec

# Copy root filesystem
COPY rootfs /

# Fix permissions
RUN chmod a+x /etc/services.d/postgres/run

# Labels
LABEL \
    org.opencontainers.image.title="PostgreSQL 16" \
    org.opencontainers.image.description="PostgreSQL 16 database" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
