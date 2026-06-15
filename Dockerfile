FROM bluenviron/mediamtx:1.17.1@sha256:9e39256d1ba35f0063700c6f62dd32e6db4592ddd9560d78f409ec451d79b1d8 AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.3@sha256:3bdd0e8722d9fd27c56a56a1dbc025c787382cabb2ab236339349fa78b97e40c AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
