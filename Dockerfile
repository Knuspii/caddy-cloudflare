ARG CADDY_VERSION=2.11.7

FROM caddy:${CADDY_VERSION}-builder AS builder

ARG CLOUDFLARE_VERSION=v0.2.4

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@${CLOUDFLARE_VERSION}

FROM caddy:${CADDY_VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
