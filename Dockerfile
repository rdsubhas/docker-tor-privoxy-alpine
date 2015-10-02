FROM alpine:3.2

EXPOSE 8118 9050

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
  echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
  apk --update add privoxy@edge tor@testing runit@testing

COPY service /etc/service/

CMD ["runsvdir", "/etc/service"]
