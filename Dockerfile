FROM bluenviron/mediamtx:1.21.0@sha256:19fddade8d6110a3d718ac0045681fbeba344ae563a066205fe5929a87f7582f AS upstream
FROM ghcr.io/radiorabe/ubi10-minimal:0.1.7@sha256:d8303c8a4a9eb4b744b3f18b2db582e8f00622b4151ed57ecdfbba8601959c63 AS app

COPY --from=upstream /LICENSE /
COPY --from=upstream /mediamtx /
COPY --from=upstream /mediamtx.yml /

USER 1000

ENTRYPOINT [ "/mediamtx" ]
