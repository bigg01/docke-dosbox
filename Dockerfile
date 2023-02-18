# https://github.com/bigg01/docker-dosbox.git
FROM ghcr.io/bigg01/docker-novnc:master
# set labels for metadata
LABEL maintainer="Oliver Guggenbuehl<info@containerize.ch>" \
  name="dosbox" \
  description="container for running dos games"
# set env
ENV RUN_XTERM=no \
  DISPLAY_WIDTH=1024 \
  DISPLAY_HEIGHT=768
# intall packages
RUN apt-get update -y && \
  apt-get install -y dosbox && \
  rm -rfv /var/lib/apt/lists/*
# copy config file
COPY ./dosbox.conf /app/conf.d/