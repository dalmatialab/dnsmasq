FROM debian:buster-slim
LABEL maintainer="dalmatialab"

# Install tzdata and set right timezone
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt-get -y install tzdata
ENV TZ=Europe/Zagreb

RUN apt update && apt install -y dnsmasq && apt autoremove -y && apt autoclean && rm -rf /var/lib/apt/lists/*

EXPOSE 53

ENTRYPOINT ["/usr/sbin/dnsmasq","--keep-in-foreground","--log-facility=-","--user=root","--group=root"]
