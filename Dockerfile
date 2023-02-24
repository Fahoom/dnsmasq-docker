FROM alpine:latest

# Get the latest dnsmasq
RUN apk update
RUN apk --no-cache add dnsmasq

EXPOSE 53 53/udp
EXPOSE 67/udp
EXPOSE 68/udp

ENTRYPOINT [ "dnsmasq", "-k" ]