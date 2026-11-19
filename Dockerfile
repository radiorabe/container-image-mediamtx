FROM bluenviron/mediamtx:1.21.3@sha256:59e43552f3be43695b70c19424dc2a42fcec18075f88d91561a24ac5d70a586c AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.8@sha256:6327bfb9b72d5a2cd8284526fce69bb0d09aeef0c95104d6ff128f87e025c202 AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
