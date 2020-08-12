FROM alpine:latest

MAINTAINER AmirHosein Nematzadeh <me@amirhne.me>

EXPOSE 5000

RUN mkdir /home/hello_world

WORKDIR /home/hello_world/

COPY project /home/hello_world

RUN apk update && apk add py-pip && pip install flask 

CMD python3 /home/hello_world/hello.py