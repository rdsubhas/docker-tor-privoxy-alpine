FROM alpine:3.7

EXPOSE 8118 9050

RUN apk --update add privoxy tor runit

COPY service /etc/service/

CMD ["runsvdir", "/etc/service"]
