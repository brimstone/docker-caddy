FROM scratch

EXPOSE 443

ENTRYPOINT ["/caddy"]

VOLUME /www

WORKDIR /www

COPY identtrust.root.pem /etc/ssl/certs/ca-certificates.crt

COPY caddy /caddy
