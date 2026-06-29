FROM bluenviron/mediamtx:1.19.2@sha256:f37aaaf1a707c42b0aff49a3ab5d4fa57a3504ebc3f27657434a820e3b16d730 AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.7@sha256:d8303c8a4a9eb4b744b3f18b2db582e8f00622b4151ed57ecdfbba8601959c63 AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
