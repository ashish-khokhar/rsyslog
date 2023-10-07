FROM alpine:3

EXPOSE 514

RUN apk add --no-cache bash rsyslog

COPY entrypoint.sh /
COPY rsyslog.conf /etc/rsyslog.conf

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["rsyslogd", "-n"]
