FROM haproxy:1.5

ENV inIp 0.0.0.0
ENV inPort 8888

EXPOSE 8000

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN cat /usr/local/etc/haproxy/haproxy.cfg
