# Dynamic HA-Proxy and DNS update based on rancher metadata

This image starts [confd](https://github.com/kelseyhightower/confd) that periodically polls the rancher metadata service so it autoconfigures a default load balancer and also updates records in a dns directory based on labels on other stacks.

The idea is forked from https://github.com/Mikroways/rancher-haproxy

## How it works

* Create your custom stack as usual
* Configure your containers as mentioned in https://github.com/Mikroways/rancher-haproxy
* Add an environment variable called **DNS_SERVER** to the container instantiated from this image pointing to you DNS server (either an IP adress or the domain name may be specified here).

## Some reading that helps troubleshooting of might be interesting for further development

* https://en.wikipedia.org/wiki/Nsupdate
* http://dns.measurement-factory.com/tools/dnstop/dnstop.8.html
* https://debian-administration.org/article/591/Using_the_dynamic_DNS_editor_nsupdate
* http://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management
