# Get n8n from official image
FROM n8nio/n8n:latest as n8n_source

# Build the add-on
ARG BUILD_FROM
FROM $BUILD_FROM

# Install Node.js and dependencies
RUN apk add --no-cache \
    nodejs \
    npm \
    su-exec \
    sqlite-libs \
    python3

# Copy n8n from official image
COPY --from=n8n_source /usr/local/lib/node_modules/n8n /usr/lib/node_modules/n8n

# Link n8n
RUN ln -s /usr/lib/node_modules/n8n/bin/n8n /usr/bin/n8n

# Copy root filesystem
COPY rootfs /

# Fix permissions
RUN chmod a+x /etc/services.d/n8n/run

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION
