ARG BUILD_FROM
FROM $BUILD_FROM

# Install PostgreSQL and Exporter
RUN apk add --no-cache \
    postgresql17 \
    postgresql17-client \
    su-exec

# Copy root filesystem
COPY rootfs /

# Fix permissions
RUN chmod a+x /etc/services.d/postgres/run

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION
