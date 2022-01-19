FROM ghcr.io/linuxserver/baseimage-alpine:3.12 as buildstage

LABEL maintainer="chouquette"

RUN \
    wget https://github.com/WDaan/vuetorrent/releases/latest/download/vuetorrent.zip && \
    mkdir -p /root-layer/qbittorrent/vuetorrent && \
    unzip -d /root-layer/qbittorrent/ vuetorrent.zip && \
    rm -f vuetorrent.zip

# copy local files
COPY root/ /root-layer/

FROM scratch

COPY --from=buildstage /root-layer/ /
