FROM marcelesser/ubuntu:trusty
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y postfix
EXPOSE 25
CMD ["smtp-sink", "-u", "postfix", "-v", "0.0.0.0:25", "100"]

