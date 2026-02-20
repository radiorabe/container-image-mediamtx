FROM bluenviron/mediamtx:1.16.1 AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.3 AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
