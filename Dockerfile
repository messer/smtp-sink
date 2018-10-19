FROM alpine:latest
RUN apk add --no-cache --update python3
WORKDIR /server
ADD ./server.py /server/server.py
EXPOSE 25
CMD ["python3", "server.py"]

