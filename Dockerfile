ARG CADDY_BUILDER_IMAGE=caddy:builder
ARG CADDY_RUNTIME_IMAGE=caddy:latest

FROM ${CADDY_BUILDER_IMAGE} AS builder

ARG CLOUDFLARE_VERSION

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@${CLOUDFLARE_VERSION} \
    --output /usr/bin/caddy

FROM ${CADDY_RUNTIME_IMAGE}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
