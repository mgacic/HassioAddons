ARG BUILD_FROM
FROM $BUILD_FROM

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

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION
