FROM python:3.4-alpine3.7

RUN addgroup -S uwsgi && adduser -S -g uwsgi uwsgi
RUN pip install Flask==0.10.1 
RUN apk update; apk add --no-cache --virtual .build-deps gcc libc-dev musl  musl-dev linux-headers python3-dev build-base  pcre-dev
RUN pip install  uwsgi requests redis

WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi
CMD ["/cmd.sh"]
