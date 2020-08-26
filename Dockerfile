FROM qoomon/docker-host

RUN apk --update --no-cache add socat && \
    head -n -4 /entrypoint.sh > xdebug-init.sh && \
    echo "export DOCKER_HOST=\${docker_host_ipv4}" >> xdebug-init.sh && \
    rm /entrypoint.sh

COPY ./xdebug-entrypoint.sh /

ENV PORTS=9000:9000
ENTRYPOINT ["/xdebug-entrypoint.sh"]
