FROM bluenviron/mediamtx:1.17.1@sha256:9e39256d1ba35f0063700c6f62dd32e6db4592ddd9560d78f409ec451d79b1d8 AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.7@sha256:d8303c8a4a9eb4b744b3f18b2db582e8f00622b4151ed57ecdfbba8601959c63 AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
