FROM alpine:3.16.2
MAINTAINER e1z0

# Install the necessary packages
RUN apk add --no-cache \
  dnsmasq

WORKDIR /tmp

# Configure DNSMASQ
COPY etc/ /etc

# Copy init
COPY init.sh /init.sh

# Start dnsmasq. It picks up default configuration from /etc/dnsmasq.conf and
ENTRYPOINT ["/init.sh"]
