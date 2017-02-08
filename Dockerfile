FROM mikroways/rancher-haproxy
MAINTAINER Wolfgang Brauneis <wolfgang.brauneis@gmail.com>

RUN set -ex && \
    apk --update add bind-tools && \
    rm /var/cache/apk/*

# Add confd tmpl and toml
ADD confd/*.toml /etc/confd/conf.d/
ADD confd/*.tmpl /etc/confd/templates/

ENTRYPOINT ["/usr/bin/start.sh"]
