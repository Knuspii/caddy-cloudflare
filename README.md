[![Build Caddy Cloudflare](https://github.com/Knuspii/caddy-cloudflare/actions/workflows/build.yml/badge.svg)](https://github.com/Knuspii/caddy-cloudflare/actions/workflows/build.yml)

# Caddy Cloudflare

Custom Caddy Docker image with the [Cloudflare DNS Provider](https://github.com/caddy-dns/cloudflare) module.

Weekly automatic rebuilds to keep Caddy and its Cloudflare module up to date. \
This image is built using [xcaddy](https://github.com/caddyserver/xcaddy) and includes support for ACME DNS-01 challenges through Cloudflare.

## Features

- Official Caddy base image
- Cloudflare DNS Provider module
- Automatic TLS certificate issuance and renewal
- ACME DNS-01 challenge support
- Automated builds using GitHub Actions
- Published to GitHub Container Registry (GHCR)

## Docker Image

The image is available through GitHub Container Registry:

```
ghcr.io/knuspii/caddy-cloudflare:latest
```
