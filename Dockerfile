FROM gliderlabs/alpine

RUN apk-install nodejs

CMD ["node"]
