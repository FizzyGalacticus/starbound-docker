FROM ubuntu:20.04

ENV TZ=America/Los_Angeles

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo "export LIBGL_ALWAYS_INDIRECT=1" >> /root/.bashrc

RUN apt-get update && apt-get install libsdl2-dev -y

RUN mkdir -p /game/storage

COPY assets /game/assets
COPY linux /game/linux
COPY tiled /game/tiled

WORKDIR /game/linux

EXPOSE 21025

ENTRYPOINT [ "./starbound_server" ]
CMD []
