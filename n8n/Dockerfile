ARG BUILD_FROM=ghcr.io/home-assistant/base:latest
FROM ${BUILD_FROM}

# Install Node.js and dependencies
RUN apk add --no-cache \
    nodejs \
    npm \
    su-exec \
    make \
    g++ \
    gcc \
    build-base \
    python3 \
    py3-pip \
    ffmpeg \
    imagemagick \
    ghostscript \
    openssl-dev

# Install n8n
RUN npm install -g n8n

# Copy root filesystem
COPY rootfs /

# Fix permissions
RUN chmod a+x /etc/services.d/n8n/run

# Labels
LABEL \
    org.opencontainers.image.title="n8n" \
    org.opencontainers.image.description="n8n Workflow Automation Tool" \
    org.opencontainers.image.source="https://github.com/mgacic/HassioAddons" \
    org.opencontainers.image.licenses="MIT"
