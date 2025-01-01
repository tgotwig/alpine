FROM alpine:3.21

COPY install.sh /tmp/install.sh

RUN chmod +x /tmp/install.sh && /tmp/install.sh

CMD ["sh"]
