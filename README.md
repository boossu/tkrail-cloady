# tkrail-cloady

Personal xray node for Cloady (free tier).

## What it is

A Docker image that runs xray (VLESS + WebSocket + TLS) using the shared remote config. The start command is baked into the image, so Cloady does not need a custom start command, and port 8080 is exposed.

- Base image: ghcr.io/xtls/xray-core:latest (official image; WebSocket works here, unlike the teddysun template image where WS is deprecated)
- Config: https://paste.rs/yCLJv (VLESS inbound 0.0.0.0:8080, WS path /tk-rail)
- Port: 8080

## Deploy on Cloady

1. In Cloady, create a new application from this GitHub repo (Connect GitHub account), or deploy the Docker image built from this repo.
2. Region: Japan (JPN1) preferred for lower latency from China.
3. The public domain is auto-assigned; the node address is https://<domain>:443 with VLESS over WebSocket, path /tk-rail.

## VLESS link format

vless://<UUID>@<domain>:443?encryption=none&security=tls&sni=<domain>&type=ws&host=<domain>&path=%2Ftk-rail#<name>
