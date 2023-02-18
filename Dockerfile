# https://github.com/bigg01/docker-dosbox.git
FROM ghcr.io/bigg01/docker-novnc:sha256-6f7d705b91c4f680e6957b80b5d01f1617cbfcb85f667a0936118246bc8712ee.sig
# set labels for metadata
LABEL maintainer="Oliver Guggenbuehl<info@containerize.ch>" \
  name="dosbox" \
  description="container for running dos games"
# set env
ENV RUN_XTERM=no \
  DISPLAY_WIDTH=1024 \
  DISPLAY_HEIGHT=768
# intall packages
RUN apt-get install -y dosbox
#&& rm -rfv /var/lib/apt/lists/*
# copy config file
COPY ./dosbox.conf /app/conf.d/