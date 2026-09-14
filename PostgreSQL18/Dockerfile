ARG BUILD_FROM=ghcr.io/home-assistant/base:latest
FROM ${BUILD_FROM}

# Install PostgreSQL and Exporter
RUN apk add --no-cache \
    postgresql18 \
    postgresql18-client \
    su-exec

# Copy root filesystem
COPY rootfs /

# Fix permissions
RUN chmod a+x /etc/services.d/postgres/run

# Labels
LABEL \
    org.opencontainers.image.title="PostgreSQL 18" \
    org.opencontainers.image.description="PostgreSQL 18 database" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
