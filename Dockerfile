FROM bluenviron/mediamtx:1.19.1@sha256:61ebddaa43a6da78d4c6e98b9f9c12066856ffd85893656f5c000d870b88bbe4 AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.3@sha256:3bdd0e8722d9fd27c56a56a1dbc025c787382cabb2ab236339349fa78b97e40c AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
