FROM haproxy:1.5

ENV SS_IP 0.0.0.0
ENV SS_PORT 8888

EXPOSE 8000

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN cat /usr/local/etc/haproxy/haproxy.cfg