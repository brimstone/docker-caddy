FROM scratch

EXPOSE 443

ENTRYPOINT ["/caddy"]

COPY identtrust.root.pem /etc/ssl/certs/ca-certificates.crt

COPY caddy /caddy
