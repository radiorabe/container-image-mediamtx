FROM bluenviron/mediamtx:1.19.1@sha256:61ebddaa43a6da78d4c6e98b9f9c12066856ffd85893656f5c000d870b88bbe4 AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.7@sha256:d8303c8a4a9eb4b744b3f18b2db582e8f00622b4151ed57ecdfbba8601959c63 AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
