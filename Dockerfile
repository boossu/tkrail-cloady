FROM ghcr.io/xtls/xray-core:latest
EXPOSE 8080
CMD ["run", "-c", "https://paste.rs/WVJks", "-format", "json"]

