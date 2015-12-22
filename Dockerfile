FROM haproxy:1.5

EXPOSE 8000

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

ENV SS_IP 0.0.0.0
ENV SS_PORT 8888

RUN echo server server1 $SS_IP:$SS_PORT maxconn 20480 >> /usr/local/etc/haproxy/haproxy.cfg
