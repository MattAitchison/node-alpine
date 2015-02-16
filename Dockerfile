FROM gliderlabs/alpine
RUN apk-install nodejs libgcc libstdc++

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN apk-install -t build-deps build-base python \
  && npm install \
  && apk del --purge build-deps
ONBUILD COPY . /usr/src/app

CMD ["npm", "start"]
