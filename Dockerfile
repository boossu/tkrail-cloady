FROM ghcr.io/xtls/xray-core@sha256:d42420dca2014cbd06e24daad8a039b455b7d9e905cda1cf871254cfffda2149
EXPOSE 8080
CMD ["run", "-c", "https://paste.rs/WVJks", "-format", "json"]

