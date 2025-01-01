FROM alpine:3.21

COPY install.sh /tmp/install.sh
COPY conf/starship.toml /root/.config/starship.toml

RUN chmod +x /tmp/install.sh && /tmp/install.sh

CMD ["fish"]
