FROM ubuntu:20.04

RUN mkdir -p /game/storage

COPY assets /game/assets
COPY linux /game/linux
COPY tiled /game/tiled

WORKDIR /game/linux

EXPOSE 21025

ENTRYPOINT [ "./starbound_server" ]
CMD []
